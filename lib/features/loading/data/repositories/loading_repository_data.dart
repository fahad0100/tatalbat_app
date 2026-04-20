import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:talabat_app/core/errors/network_exceptions.dart';
import 'package:talabat_app/core/errors/failure.dart';
import 'package:talabat_app/features/loading/domain/entities/loading_entity.dart';

import 'package:talabat_app/features/loading/data/datasources/loading_remote_data_source.dart';
import 'package:talabat_app/features/loading/data/models/loading_model.dart';
import 'package:talabat_app/features/loading/domain/repositories/loading_repository_domain.dart';

@LazySingleton(as: LoadingRepositoryDomain)
class LoadingRepositoryData implements LoadingRepositoryDomain {
  final BaseLoadingRemoteDataSource remoteDataSource;

  LoadingRepositoryData(this.remoteDataSource);

  @override
  Future<Result<LoadingEntity, Failure>> checkStatus() async {
    try {
      final response = await remoteDataSource.checkStatus();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
