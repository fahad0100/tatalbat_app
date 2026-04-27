import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:talabat_app/core/services/insert_service.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/entities/items_entity.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/use_cases/add_items_use_case.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/presentation/cubit/add_items_state.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/presentation/pages/add_items_feature_widget.dart';

class AddItemsCubit extends Cubit<AddItemsState> {
  final AddItemsUseCase _addItemsUseCase;

  AddItemsCubit(this._addItemsUseCase) : super(AddItemsInitialState());
  List<ItemsEntity> itemsLoaded = [];
  List<ItemInsert> itemsInsert = [];

  Future<void> getAddItemsMethod({String? search}) async {
    emit(AddLoadingSearchState());
    await Future.delayed(Duration(seconds: 1));
    final result = await _addItemsUseCase.getItems(
      search: search == null
          ? null
          : search.isEmpty
          ? null
          : search,
    );

    result.when(
      (success) {
        itemsLoaded = success;
        emit(AddItemsSuccessState(items: success));
      },
      (whenError) {
        print(whenError);
        //here is when error result
      },
    );
  }

  void addItem({required ItemInsert insert}) async {
    emit(AddItemsInitialState());
    itemsInsert.add(insert);
    GetIt.I.get<InsertService>().itemInserts = List.from(itemsInsert);

    await Future.delayed(Duration.zero);
    emit(InsertItemSuccessState(itemsInsert: itemsInsert));
  }

  void updateUI() async {
    emit(AddItemsInitialState());
    await Future.delayed(Duration.zero);
    emit(InsertItemSuccessState(itemsInsert: itemsInsert));
  }

  void remove({required int index}) async {
    emit(AddItemsInitialState());
    itemsInsert.removeAt(index);
    await Future.delayed(Duration.zero);

    emit(InsertItemSuccessState(itemsInsert: itemsInsert));
  }

  void save() async {
    GetIt.I.get<InsertService>().itemInserts = List.from(itemsInsert);
    for (var element in GetIt.I.get<InsertService>().itemInserts) {
      print(" name: ${element.name}");
      print(" pathImageList: ${element.url}");
    }
    emit(AddItemsInitialState());
    final result = await _addItemsUseCase.insert(
      itemInsert: GetIt.I.get<InsertService>(),
    );
    result.when(
      (whenSuccess) {
        itemsInsert = [];
        GetIt.I.get<InsertService>().itemInserts = List.from(itemsInsert);
        emit(AddSaveAndCloseState());
      },
      (whenError) {
        emit(AddItemsErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
