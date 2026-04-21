import 'package:equatable/equatable.dart';

abstract class AddItemsState extends Equatable {
  const AddItemsState();

  @override
  List<Object?> get props => [];
}

class AddItemsInitialState extends AddItemsState {}
class AddItemsSuccessState extends AddItemsState {}

class AddItemsErrorState extends AddItemsState {
  final String message;
  const AddItemsErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

