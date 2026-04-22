import 'dart:developer';

import 'package:any_image_view/any_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:sizer/sizer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:talabat_app/core/extensions/context_extensions.dart';
import 'package:talabat_app/core/widgets/loading_widget.dart';
import 'package:talabat_app/features/add_item_list/presentation/widgets/merge.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/entities/items_entity.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/presentation/cubit/add_items_cubit.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/presentation/cubit/add_items_state.dart';

class AddItemsFeatureWidget extends StatelessWidget {
  const AddItemsFeatureWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddItemsCubit(GetIt.I.get()),
      child: Builder(
        builder: (context) {
          final cubit = context.read<AddItemsCubit>();
          cubit.getAddItemsMethod();
          return Scaffold(
            appBar: AppBar(),
            floatingActionButton: FloatingActionButton.small(
              onPressed: () {},
              child: Icon(Icons.save),
            ),

            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      BlocBuilder<AddItemsCubit, AddItemsState>(
                        builder: (context, state) {
                          return ItemCards(
                            isLoading: (state is AddItemsSuccessState)
                                ? false
                                : true,
                            items: (state is AddItemsSuccessState)
                                ? state.items
                                : [],
                            buildWhen: () {
                              if (state is AddItemsSuccessState) {
                                return true;
                              }
                              return false;
                            },
                          );
                        },
                      ),
                      // ItemCards(),
                      // ItemCards(),
                      // ItemCards(),
                      FilledButton(onPressed: () {}, child: Text("New item")),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

//------
final GlobalKey _dialogKey = GlobalKey();

class ItemCards extends HookWidget {
  const ItemCards({
    super.key,
    required this.items,
    required this.isLoading,
    this.buildWhen,
  });
  final List<ItemsEntity> items;
  final bool Function()? buildWhen;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text("Name Item"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              filled: true,
              hintText: "Name",
              fillColor: Colors.white,
            ),
            onTap: () async {
              if (context.mounted) {
                context.showBottomSheet(
                  height: 100.sh,
                  widget: StatefulBuilder(
                    key: _dialogKey,
                    builder: (context, setState) {
                      if (_dialogKey.currentState != null) {
                        _dialogKey.currentState!.setState(() {
                          // تحديث القيم هنا
                        });
                      }
                      return SizedBox(
                        height: 10000,
                        width: double.infinity,
                        child: Column(
                          children: [
                            OurField.field(
                              label: "Search",
                              hint: "Write name item",
                            ),
                            if (items.isNotEmpty)
                              Text(items.first.id)
                            else if (items.isEmpty)
                              Text("No found items"),
                            if (isLoading)
                              LinearProgressIndicator(
                                backgroundColor: Colors.blue,
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              }
            },
          ),
          Gap(8),
          Row(
            crossAxisAlignment: .start,
            spacing: 8,
            children: [
              AnyImageView(height: 150, width: 150),
              Expanded(
                child: Column(
                  spacing: 8,
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    OurField.field(label: 'Price', hint: "Price"),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(150, 45),
                        // backgroundColor: Colors.red,
                        foregroundColor: Colors.red,
                        side: BorderSide(color: Colors.red, width: 0.2),
                      ),
                      child: Text("Remove"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
