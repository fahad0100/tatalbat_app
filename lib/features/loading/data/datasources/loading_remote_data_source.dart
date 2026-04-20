import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:talabat_app/features/loading/data/models/loading_model.dart';
import 'package:talabat_app/core/errors/network_exceptions.dart';

abstract class BaseLoadingRemoteDataSource {
  Future<LoadingModel> checkStatus();
}

@LazySingleton(as: BaseLoadingRemoteDataSource)
class LoadingRemoteDataSource implements BaseLoadingRemoteDataSource {
  final SupabaseClient _supabase;

  LoadingRemoteDataSource(this._supabase);

  @override
  Future<LoadingModel> checkStatus() async {
    try {
      if (_supabase.auth.currentUser == null) {
        await _supabase.auth.signInAnonymously();
        return LoadingModel(isLogin: true, isUser: false);
      }
      await restAuth();
      if (_supabase.auth.currentUser!.isAnonymous) {
        return LoadingModel(isLogin: true, isUser: false);
      }
      return LoadingModel(isLogin: true, isUser: true);
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  Future<void> restAuth() async {
    if (_supabase.auth.currentSession == null) {
      await _supabase.auth.signInAnonymously();
    }

    if (_supabase.auth.currentSession!.isExpired) {
      await _supabase.auth.refreshSession(
        _supabase.auth.currentSession!.refreshToken,
      );
    }
  }
}
