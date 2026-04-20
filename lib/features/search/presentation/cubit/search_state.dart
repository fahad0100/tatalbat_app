import 'package:equatable/equatable.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object?> get props => [];
}

class SearchInitialState extends SearchState {}
class SearchSuccessState extends SearchState {}

class SearchErrorState extends SearchState {
  final String message;
  const SearchErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

