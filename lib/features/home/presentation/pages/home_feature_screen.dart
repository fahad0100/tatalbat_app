import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_app/core/navigation/routers.dart';
import 'package:talabat_app/features/home/presentation/cubit/home_cubit.dart';

class HomeFeatureScreen extends StatelessWidget {
  const HomeFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final _ = context.read<HomeCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Feature Screen'),
        actions: [
          IconButton(
            onPressed: () {
              context.push(Routes.search);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              context.push(Routes.addItemList, extra: false);
            },
            icon: Icon(Icons.list),
          ),
        ],
      ),
      body: Column(children: []),
    );
  }
}
