import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/presentation/cubit/add_items_cubit.dart';

class AddItemsFeatureWidget extends StatelessWidget {
  const AddItemsFeatureWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddItemsCubit(GetIt.I.get()),
      child: Builder(
        builder: (context) {
          final _ = context.read<AddItemsCubit>();
          return Scaffold(body: Column(children: [
                
                ],
              ));
        },
      ),
    );
  }
}
