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
import 'package:talabat_app/features/search/data/datasources/search_remote_data_source.dart'
    as _i750;
import 'package:talabat_app/features/search/data/repositories/search_repository_data.dart'
    as _i923;
import 'package:talabat_app/features/search/domain/repositories/search_repository_domain.dart'
    as _i819;
import 'package:talabat_app/features/search/domain/use_cases/search_use_case.dart'
    as _i927;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initSearch({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i750.BaseSearchRemoteDataSource>(
      () => _i750.SearchRemoteDataSource(
        gh<_i757.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i819.SearchRepositoryDomain>(
      () => _i923.SearchRepositoryData(gh<_i750.BaseSearchRemoteDataSource>()),
    );
    gh.lazySingleton<_i927.SearchUseCase>(
      () => _i927.SearchUseCase(gh<_i819.SearchRepositoryDomain>()),
    );
    return this;
  }
}
