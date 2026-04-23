import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:talabat_app/core/common/models/search_model/item_model.dart';
import 'package:talabat_app/core/services/local_keys_service.dart';
import 'package:talabat_app/core/errors/network_exceptions.dart';

abstract class BaseAddItemsRemoteDataSource {
  Future<List<ItemModel>> getItems({String? search});
}

@LazySingleton(as: BaseAddItemsRemoteDataSource)
class AddItemsRemoteDataSource implements BaseAddItemsRemoteDataSource {
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;

  AddItemsRemoteDataSource(this._localKeysService, this._supabase);

  @override
  Future<List<ItemModel>> getItems({String? search}) async {
    try {
      var query = _supabase.from("products").select();
      if (search != null && search.isNotEmpty) {
        query = query.like('name_ar', search);
      }

      // if (search == null) {
      // query = await query.limit(100);
      // }

      final dataLoad = List.from((await query) ?? []);

      return dataLoad.map((item) => ItemModel.fromJson(item)).toList();
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
