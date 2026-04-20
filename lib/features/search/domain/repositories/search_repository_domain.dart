import 'package:multiple_result/multiple_result.dart';
import 'package:talabat_app/core/errors/failure.dart';
import 'package:talabat_app/features/search/domain/entities/search_entity.dart';

abstract class SearchRepositoryDomain {
  Future<Result<List<SearchEntity>, Failure>> getInitialItems();
  Future<Result<List<SearchEntity>, Failure>> search({required String name});
}
