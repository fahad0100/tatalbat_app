import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:talabat_app/core/errors/failure.dart';
import 'package:talabat_app/features/search/domain/entities/search_entity.dart';
import 'package:talabat_app/features/search/domain/repositories/search_repository_domain.dart';

@lazySingleton
class SearchUseCase {
  final SearchRepositoryDomain _repositoryData;

  SearchUseCase(this._repositoryData);

  Future<Result<List<SearchEntity>, Failure>> getInitialItems() async {
    return _repositoryData.getInitialItems();
  }

  Future<Result<List<SearchEntity>, Failure>> search({
    required String name,
  }) async {
    return await _repositoryData.search(name: name);
  }
}
