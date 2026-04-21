import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:talabat_app/core/errors/failure.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/entities/add_items_entity.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/repositories/add_items_repository_domain.dart';


@lazySingleton
class AddItemsUseCase {
  final AddItemsRepositoryDomain _repositoryData;

  AddItemsUseCase(this._repositoryData);

   Future<Result<AddItemsEntity, Failure>> getAddItems() async {
    return _repositoryData.getAddItems();
  }
}
