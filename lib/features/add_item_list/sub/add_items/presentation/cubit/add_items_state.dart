import 'package:equatable/equatable.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/entities/items_entity.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/presentation/pages/add_items_feature_widget.dart';

abstract class AddItemsState extends Equatable {
  const AddItemsState();

  @override
  List<Object?> get props => [];
}

class AddItemsInitialState extends AddItemsState {}

class AddLoadingSearchState extends AddItemsState {}
class AddSaveAndCloseState extends AddItemsState {}

class InsertItemSuccessState extends AddItemsState {
  final List<ItemInsert> itemsInsert;

  const InsertItemSuccessState({required this.itemsInsert});
  @override
  List<Object?> get props => [itemsInsert];
}

class AddItemsSuccessState extends AddItemsState {
  final List<ItemsEntity> items;

  const AddItemsSuccessState({required this.items});
  @override
  List<Object?> get props => [items];
}

class AddItemsErrorState extends AddItemsState {
  final String message;
  const AddItemsErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
