
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:talabat_app/core/errors/network_exceptions.dart';
import 'package:talabat_app/core/errors/failure.dart';
import 'package:talabat_app/features/auth/domain/entities/auth_entity.dart';

import 'package:talabat_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:talabat_app/features/auth/data/models/auth_model.dart';
import 'package:talabat_app/features/auth/domain/repositories/auth_repository_domain.dart';

@LazySingleton(as: AuthRepositoryDomain)
class AuthRepositoryData implements AuthRepositoryDomain{
  final BaseAuthRemoteDataSource remoteDataSource;


  AuthRepositoryData(this.remoteDataSource);

@override
  Future<Result<AuthEntity, Failure>> getAuth() async {
    try {
      final response = await remoteDataSource.getAuth();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
