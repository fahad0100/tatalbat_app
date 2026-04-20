
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:talabat_app/core/errors/network_exceptions.dart';
import 'package:talabat_app/core/errors/failure.dart';
import 'package:talabat_app/features/search/domain/entities/search_entity.dart';

import 'package:talabat_app/features/search/data/datasources/search_remote_data_source.dart';
import 'package:talabat_app/features/search/data/models/search_model.dart';
import 'package:talabat_app/features/search/domain/repositories/search_repository_domain.dart';

@LazySingleton(as: SearchRepositoryDomain)
class SearchRepositoryData implements SearchRepositoryDomain{
  final BaseSearchRemoteDataSource remoteDataSource;


  SearchRepositoryData(this.remoteDataSource);

@override
  Future<Result<SearchEntity, Failure>> getSearch() async {
    try {
      final response = await remoteDataSource.getSearch();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
