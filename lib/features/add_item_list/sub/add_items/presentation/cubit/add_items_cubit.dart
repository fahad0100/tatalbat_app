import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/use_cases/add_items_use_case.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/presentation/cubit/add_items_state.dart';

class AddItemsCubit extends Cubit<AddItemsState> {
  final AddItemsUseCase _addItemsUseCase;

  AddItemsCubit(this._addItemsUseCase) : super(AddItemsInitialState());

  Future<void> getAddItemsMethod() async {
    final result = await _addItemsUseCase.getAddItems();
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
