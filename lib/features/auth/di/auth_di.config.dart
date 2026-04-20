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
import 'package:talabat_app/features/auth/data/datasources/auth_remote_data_source.dart'
    as _i207;
import 'package:talabat_app/features/auth/data/repositories/auth_repository_data.dart'
    as _i846;
import 'package:talabat_app/features/auth/domain/repositories/auth_repository_domain.dart'
    as _i681;
import 'package:talabat_app/features/auth/domain/use_cases/auth_use_case.dart'
    as _i93;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initAuth({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i207.BaseAuthRemoteDataSource>(
      () => _i207.AuthRemoteDataSource(
        gh<_i757.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i681.AuthRepositoryDomain>(
      () => _i846.AuthRepositoryData(gh<_i207.BaseAuthRemoteDataSource>()),
    );
    gh.lazySingleton<_i93.AuthUseCase>(
      () => _i93.AuthUseCase(gh<_i681.AuthRepositoryDomain>()),
    );
    return this;
  }
}
