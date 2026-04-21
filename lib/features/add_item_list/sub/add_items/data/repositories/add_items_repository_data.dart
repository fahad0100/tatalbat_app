
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:talabat_app/core/errors/network_exceptions.dart';
import 'package:talabat_app/core/errors/failure.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/entities/add_items_entity.dart';

import 'package:talabat_app/features/add_item_list/sub/add_items/data/datasources/add_items_remote_data_source.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/data/models/add_items_model.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/repositories/add_items_repository_domain.dart';

@LazySingleton(as: AddItemsRepositoryDomain)
class AddItemsRepositoryData implements AddItemsRepositoryDomain{
  final BaseAddItemsRemoteDataSource remoteDataSource;


  AddItemsRepositoryData(this.remoteDataSource);

@override
  Future<Result<AddItemsEntity, Failure>> getAddItems() async {
    try {
      final response = await remoteDataSource.getAddItems();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
