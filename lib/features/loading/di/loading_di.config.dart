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
import 'package:talabat_app/features/loading/data/datasources/loading_remote_data_source.dart'
    as _i802;
import 'package:talabat_app/features/loading/data/repositories/loading_repository_data.dart'
    as _i862;
import 'package:talabat_app/features/loading/domain/repositories/loading_repository_domain.dart'
    as _i792;
import 'package:talabat_app/features/loading/domain/use_cases/loading_use_case.dart'
    as _i97;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initLoading({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i802.BaseLoadingRemoteDataSource>(
      () => _i802.LoadingRemoteDataSource(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i792.LoadingRepositoryDomain>(
      () =>
          _i862.LoadingRepositoryData(gh<_i802.BaseLoadingRemoteDataSource>()),
    );
    gh.lazySingleton<_i97.LoadingUseCase>(
      () => _i97.LoadingUseCase(gh<_i792.LoadingRepositoryDomain>()),
    );
    return this;
  }
}
