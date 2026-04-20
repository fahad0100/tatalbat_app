import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_app/features/search/domain/use_cases/search_use_case.dart';
import 'package:talabat_app/features/search/presentation/cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchUseCase _searchUseCase;

  SearchCubit(this._searchUseCase) : super(SearchInitialState());

  Future<void> getSearchMethod() async {
    final result = await _searchUseCase.getSearch();
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
