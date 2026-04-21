import 'package:multiple_result/multiple_result.dart';
import 'package:talabat_app/core/errors/failure.dart';
import 'package:talabat_app/features/add_item_list/domain/entities/add_item_list_entity.dart';

abstract class AddItemListRepositoryDomain {
    Future<Result<AddItemListEntity, Failure>> getAddItemList();
}
