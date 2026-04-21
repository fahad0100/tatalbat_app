import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:talabat_app/core/services/local_keys_service.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/data/models/add_items_model.dart';
import 'package:talabat_app/core/errors/network_exceptions.dart';


abstract class BaseAddItemsRemoteDataSource {
  Future<AddItemsModel> getAddItems();
}


@LazySingleton(as: BaseAddItemsRemoteDataSource)
class AddItemsRemoteDataSource implements BaseAddItemsRemoteDataSource {
 
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  
  

   AddItemsRemoteDataSource(this._localKeysService, this._supabase);



    @override
  Future<AddItemsModel> getAddItems() async {
    try {
      return AddItemsModel(id: 1, firstName: "Last Name", lastName: "First Name");
    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}
