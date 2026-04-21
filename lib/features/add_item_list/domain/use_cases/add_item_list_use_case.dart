import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:talabat_app/core/errors/failure.dart';
import 'package:talabat_app/features/add_item_list/domain/entities/add_item_list_entity.dart';
import 'package:talabat_app/features/add_item_list/domain/repositories/add_item_list_repository_domain.dart';


@lazySingleton
class AddItemListUseCase {
  final AddItemListRepositoryDomain _repositoryData;

  AddItemListUseCase(this._repositoryData);

   Future<Result<AddItemListEntity, Failure>> getAddItemList() async {
    return _repositoryData.getAddItemList();
  }
}
