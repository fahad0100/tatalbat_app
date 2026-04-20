import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:talabat_app/core/errors/network_exceptions.dart';
import 'package:talabat_app/core/errors/failure.dart';
import 'package:talabat_app/features/search/data/models/search_model.dart';
import 'package:talabat_app/features/search/domain/entities/search_entity.dart';

import 'package:talabat_app/features/search/data/datasources/search_remote_data_source.dart';
import 'package:talabat_app/features/search/domain/repositories/search_repository_domain.dart';

@LazySingleton(as: SearchRepositoryDomain)
class SearchRepositoryData implements SearchRepositoryDomain {
  final BaseSearchRemoteDataSource remoteDataSource;

  SearchRepositoryData(this.remoteDataSource);

  @override
  Future<Result<List<SearchEntity>, Failure>> getInitialItems() async {
    try {
      final response = await remoteDataSource.getInitialItems();
      return Success(response.map((items) => items.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Result<List<SearchEntity>, Failure>> search({
    required String name,
  }) async {
    try {
      final response = await remoteDataSource.search(name: name);
      return Success(response.map((items) => items.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
