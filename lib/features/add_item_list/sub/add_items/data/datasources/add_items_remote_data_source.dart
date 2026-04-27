import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:talabat_app/core/common/models/search_model/item_model.dart';
import 'package:talabat_app/core/services/insert_service.dart';
import 'package:talabat_app/core/services/local_keys_service.dart';
import 'package:talabat_app/core/errors/network_exceptions.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/presentation/pages/add_items_feature_widget.dart';
import 'package:uuid/uuid.dart';

abstract class BaseAddItemsRemoteDataSource {
  Future<List<ItemModel>> getItems({String? search});
  Future<List<ItemModel>> insert({InsertService? itemInsert});
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

  @override
  Future<List<ItemModel>> insert({InsertService? itemInsert}) async {
    final response = await _supabase
        .from("list")
        .insert({
          "name": itemInsert?.nameList,
          "description": itemInsert?.description,
          // "url": itemInsert?.pathImageList,
        })
        .select()
        .maybeSingle();

    final featureInsert = <Future>[];
    final nameImage =
        'profile/${DateTime.now().toIso8601String()}image_one.png';
    featureInsert.add(
      _supabase.storage
          .from('images')
          .upload(nameImage, File(itemInsert!.pathImageList!))
          .then((value) async {
            final url = _supabase.storage
                .from('images')
                .getPublicUrl(nameImage);
            await _supabase
                .from("list")
                .update({"url": url})
                .eq("id", response!['id']);
          }),
    );

    for (var element in List.from(itemInsert.itemInserts).cast<ItemInsert>()) {
      featureInsert.add(
        _supabase.from("item_list").insert({
          "id": Uuid().v4(),
          "name": element.name,
          "price": element.price,
          "url": element.url,
          "list_id": response?["id"],
        }).select(),
      );
    }
    await Future.wait(featureInsert, eagerError: true);

    return [];
  }
}
