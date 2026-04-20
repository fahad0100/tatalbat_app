import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_app/features/search/domain/entities/search_entity.dart';
import 'package:talabat_app/features/search/domain/use_cases/search_use_case.dart';
import 'package:talabat_app/features/search/presentation/cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchUseCase _searchUseCase;

  List<SearchEntity> initialItems = [];

  SearchCubit(this._searchUseCase) : super(SearchInitialState()) {
    getInitialMethod();
  }

  Future<void> getInitialMethod() async {
    emit(SearchLoadingState());
    final result = await _searchUseCase.getInitialItems();
    result.when(
      (success) {
        initialItems.addAll(success);
        emit(SearchSuccessState(items: success));
      },
      (whenError) {
        emit(SearchErrorState(message: whenError.message));
      },
    );
  }

  Future<void> getSearchMethod({required String name}) async {
    emit(SearchLoadingState());
    if (name.isEmpty) {
      emit(SearchSuccessState(items: initialItems));

      return;
    }

    final result = await _searchUseCase.search(name: name);

    result.when(
      (success) async {
        emit(SearchSuccessState(items: success));
      },
      (whenError) {
        emit(SearchErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
