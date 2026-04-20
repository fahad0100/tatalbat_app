import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:talabat_app/core/services/local_keys_service.dart';
import 'package:talabat_app/features/search/data/models/search_model.dart';
import 'package:talabat_app/core/errors/network_exceptions.dart';

abstract class BaseSearchRemoteDataSource {
  Future<List<SearchModel>> getInitialItems();
  Future<List<SearchModel>> search({required String name});
}

@LazySingleton(as: BaseSearchRemoteDataSource)
class SearchRemoteDataSource implements BaseSearchRemoteDataSource {
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;

  SearchRemoteDataSource(this._localKeysService, this._supabase);

  @override
  Future<List<SearchModel>> getInitialItems() async {
    try {
      final items = await _supabase
          .from('products')
          .select()
          .eq('is_active', true)
          .limit(100)
          .order('created_at', ascending: false);

      final products = items.map((item) => SearchModel.fromJson(item)).toList();

      return products;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<List<SearchModel>> search({required String name}) async {
    final items = await _supabase
        .from('products')
        .select()
        .like('name_ar', '$name%');

    List<SearchModel> products = List.from(
      items,
    ).map((item) => SearchModel.fromJson(item)).toList();
    return products;
  }
}
