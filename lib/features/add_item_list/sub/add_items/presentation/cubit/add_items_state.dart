import 'package:equatable/equatable.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/entities/items_entity.dart';

abstract class AddItemsState extends Equatable {
  const AddItemsState();

  @override
  List<Object?> get props => [];
}

class AddItemsInitialState extends AddItemsState {}

class AddItemsSuccessState extends AddItemsState {
  final List<ItemsEntity> items;

 const AddItemsSuccessState({required this.items});
}

class AddItemsErrorState extends AddItemsState {
  final String message;
  const AddItemsErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
