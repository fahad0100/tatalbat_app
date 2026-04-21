import 'package:equatable/equatable.dart';

abstract class AddItemListState extends Equatable {
  const AddItemListState();

  @override
  List<Object?> get props => [];
}

class AddItemListInitialState extends AddItemListState {}
class AddItemListSuccessState extends AddItemListState {}

class AddItemListErrorState extends AddItemListState {
  final String message;
  const AddItemListErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

