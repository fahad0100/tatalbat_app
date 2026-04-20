import 'package:multiple_result/multiple_result.dart';
import 'package:talabat_app/core/errors/failure.dart';
import 'package:talabat_app/features/home/domain/entities/home_entity.dart';

abstract class HomeRepositoryDomain {
    Future<Result<HomeEntity, Failure>> getHome();
}
