import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_app/features/add_item_list/domain/use_cases/add_item_list_use_case.dart';
import 'package:talabat_app/features/add_item_list/presentation/cubit/add_item_list_state.dart';

class AddItemListCubit extends Cubit<AddItemListState> {
  final AddItemListUseCase _addItemListUseCase;

  AddItemListCubit(this._addItemListUseCase) : super(AddItemListInitialState());

  Future<void> getAddItemListMethod() async {
    final result = await _addItemListUseCase.getAddItemList();
    result.when(
      (success) {
        //here is when success result
      },
      (whenError) {
       //here is when error result
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
