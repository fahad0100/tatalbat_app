// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;
import 'package:talabat_app/core/services/local_keys_service.dart' as _i757;
import 'package:talabat_app/features/add_item_list/data/datasources/add_item_list_remote_data_source.dart'
    as _i711;
import 'package:talabat_app/features/add_item_list/data/repositories/add_item_list_repository_data.dart'
    as _i458;
import 'package:talabat_app/features/add_item_list/domain/repositories/add_item_list_repository_domain.dart'
    as _i660;
import 'package:talabat_app/features/add_item_list/domain/use_cases/add_item_list_use_case.dart'
    as _i608;
import 'package:talabat_app/features/add_item_list/sub/add_items/data/datasources/add_items_remote_data_source.dart'
    as _i787;
import 'package:talabat_app/features/add_item_list/sub/add_items/data/repositories/add_items_repository_data.dart'
    as _i747;
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/repositories/add_items_repository_domain.dart'
    as _i739;
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/use_cases/add_items_use_case.dart'
    as _i838;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initAddItemList({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i787.BaseAddItemsRemoteDataSource>(
      () => _i787.AddItemsRemoteDataSource(
        gh<_i757.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i711.BaseAddItemListRemoteDataSource>(
      () => _i711.AddItemListRemoteDataSource(
        gh<_i757.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i739.AddItemsRepositoryDomain>(
      () => _i747.AddItemsRepositoryData(
        gh<_i787.BaseAddItemsRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i660.AddItemListRepositoryDomain>(
      () => _i458.AddItemListRepositoryData(
        gh<_i711.BaseAddItemListRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i838.AddItemsUseCase>(
      () => _i838.AddItemsUseCase(gh<_i739.AddItemsRepositoryDomain>()),
    );
    gh.lazySingleton<_i608.AddItemListUseCase>(
      () => _i608.AddItemListUseCase(gh<_i660.AddItemListRepositoryDomain>()),
    );
    return this;
  }
}
