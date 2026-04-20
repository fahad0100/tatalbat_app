import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:talabat_app/core/services/local_keys_service.dart';
import 'package:talabat_app/features/search/data/models/search_model.dart';
import 'package:talabat_app/core/errors/network_exceptions.dart';


abstract class BaseSearchRemoteDataSource {
  Future<SearchModel> getSearch();
}


@LazySingleton(as: BaseSearchRemoteDataSource)
class SearchRemoteDataSource implements BaseSearchRemoteDataSource {
 
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  
  

   SearchRemoteDataSource(this._localKeysService, this._supabase);



    @override
  Future<SearchModel> getSearch() async {
    try {
      return SearchModel(id: 1, firstName: "Last Name", lastName: "First Name");
    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}
