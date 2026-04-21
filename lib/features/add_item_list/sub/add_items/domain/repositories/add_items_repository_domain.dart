import 'package:multiple_result/multiple_result.dart';
import 'package:talabat_app/core/errors/failure.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/entities/add_items_entity.dart';

abstract class AddItemsRepositoryDomain {
    Future<Result<AddItemsEntity, Failure>> getAddItems();
}
