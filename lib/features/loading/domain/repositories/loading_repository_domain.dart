import 'package:multiple_result/multiple_result.dart';
import 'package:talabat_app/core/errors/failure.dart';
import 'package:talabat_app/features/loading/domain/entities/loading_entity.dart';

abstract class LoadingRepositoryDomain {
  Future<Result<LoadingEntity, Failure>> checkStatus();
}
