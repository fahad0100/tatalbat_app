import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'routers.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_app/features/loading/presentation/pages/loading_feature_screen.dart';
import 'package:talabat_app/features/loading/presentation/cubit/loading_cubit.dart';
import 'package:talabat_app/features/auth/presentation/pages/auth_feature_screen.dart';
import 'package:talabat_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:talabat_app/features/home/presentation/pages/home_feature_screen.dart';
import 'package:talabat_app/features/home/presentation/cubit/home_cubit.dart';
import 'package:talabat_app/features/search/presentation/pages/search_feature_screen.dart';
import 'package:talabat_app/features/search/presentation/cubit/search_cubit.dart';





class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.loading,
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (context, state) {
          return Scaffold(body: Center(child: Text("splash screen")));
        }, // SplashScreen
      ),
    
  GoRoute(
    path: Routes.loading,
    builder: (context, state) => BlocProvider(
          create: (context) => LoadingCubit(GetIt.I.get()),
          child: const LoadingFeatureScreen(),
        ),
  ),

  GoRoute(
    path: Routes.auth,
    builder: (context, state) => BlocProvider(
          create: (context) => AuthCubit(GetIt.I.get()),
          child: const AuthFeatureScreen(),
        ),
  ),

  GoRoute(
    path: Routes.home,
    builder: (context, state) => BlocProvider(
          create: (context) => HomeCubit(GetIt.I.get()),
          child: const HomeFeatureScreen(),
        ),
  ),

  GoRoute(
    path: Routes.search,
    builder: (context, state) => BlocProvider(
          create: (context) => SearchCubit(GetIt.I.get()),
          child: const SearchFeatureScreen(),
        ),
  ),
],

    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
  );
}
