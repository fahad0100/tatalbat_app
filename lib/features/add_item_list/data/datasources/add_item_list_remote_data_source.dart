import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:talabat_app/core/services/local_keys_service.dart';
import 'package:talabat_app/features/add_item_list/data/models/add_item_list_model.dart';
import 'package:talabat_app/core/errors/network_exceptions.dart';


abstract class BaseAddItemListRemoteDataSource {
  Future<AddItemListModel> getAddItemList();
}


@LazySingleton(as: BaseAddItemListRemoteDataSource)
class AddItemListRemoteDataSource implements BaseAddItemListRemoteDataSource {
 
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  
  

   AddItemListRemoteDataSource(this._localKeysService, this._supabase);



    @override
  Future<AddItemListModel> getAddItemList() async {
    try {
      return AddItemListModel(id: 1, firstName: "Last Name", lastName: "First Name");
    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}
