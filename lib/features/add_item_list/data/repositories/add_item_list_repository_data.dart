
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:talabat_app/core/errors/network_exceptions.dart';
import 'package:talabat_app/core/errors/failure.dart';
import 'package:talabat_app/features/add_item_list/domain/entities/add_item_list_entity.dart';

import 'package:talabat_app/features/add_item_list/data/datasources/add_item_list_remote_data_source.dart';
import 'package:talabat_app/features/add_item_list/data/models/add_item_list_model.dart';
import 'package:talabat_app/features/add_item_list/domain/repositories/add_item_list_repository_domain.dart';

@LazySingleton(as: AddItemListRepositoryDomain)
class AddItemListRepositoryData implements AddItemListRepositoryDomain{
  final BaseAddItemListRemoteDataSource remoteDataSource;


  AddItemListRepositoryData(this.remoteDataSource);

@override
  Future<Result<AddItemListEntity, Failure>> getAddItemList() async {
    try {
      final response = await remoteDataSource.getAddItemList();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
