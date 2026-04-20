import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_app/core/extensions/context_extensions.dart';
import 'package:talabat_app/core/navigation/routers.dart';
import 'package:talabat_app/features/loading/presentation/cubit/loading_cubit.dart';
import 'package:talabat_app/features/loading/presentation/cubit/loading_state.dart';

class LoadingFeatureScreen extends StatelessWidget {
  const LoadingFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final _ = context.read<LoadingCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('Loading Feature Screen')),
      body: BlocListener<LoadingCubit, LoadingState>(
        listener: (context, state) {
          switch (state) {
            case LoadingSuccessState _:
              if (state.isLogin) {
                context.go(Routes.home);
                return;
              }
              context.go(Routes.auth);
              break;
            case LoadingErrorState _:
              context.showSnackBar(state.message);
              break;
            default:
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
   
            ],
          ),
        ),
      ),
    );
  }
}
