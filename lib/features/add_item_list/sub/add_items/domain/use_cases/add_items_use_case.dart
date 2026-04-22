import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:talabat_app/core/errors/failure.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/entities/add_items_entity.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/entities/items_entity.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/repositories/add_items_repository_domain.dart';

@lazySingleton
class AddItemsUseCase {
  final AddItemsRepositoryDomain _repositoryData;

  AddItemsUseCase(this._repositoryData);

  Future<Result<List<ItemsEntity>, Failure>> getItems({
    String? search,
  }) async {
    return _repositoryData.getItems(search: search);
  }
}
