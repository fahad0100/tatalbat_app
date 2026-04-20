import 'package:multiple_result/multiple_result.dart';
import 'package:talabat_app/core/errors/failure.dart';
import 'package:talabat_app/features/auth/domain/entities/auth_entity.dart';

abstract class AuthRepositoryDomain {
    Future<Result<AuthEntity, Failure>> getAuth();
}
