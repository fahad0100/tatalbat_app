import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/presentation/cubit/add_items_cubit.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/presentation/cubit/add_items_state.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/presentation/widgets/item_cards.dart';

class AddItemsFeatureWidget extends HookWidget {
  const AddItemsFeatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddItemsCubit(GetIt.I.get()),
      child: Builder(
        builder: (context) {
          final cubit = context.read<AddItemsCubit>();
          cubit.getAddItemsMethod();

          cubit.addItem(
            insert: ItemInsert(name: "منهل", price: 100, url: "dlaisduf"),
          );

          return Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                  onPressed: () {
                    print(cubit.itemsInsert.first);
                  },
                  icon: Icon(Icons.abc),
                ),
              ],
            ),
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
                        buildWhen: (previous, current) {
                          return current is InsertItemSuccessState;
                        },
                        builder: (context, state) {
                          if (state is InsertItemSuccessState) {
                            return Column(
                              children: state.itemsInsert
                                  .map(
                                    (item) => ItemCards(
                                      item: item,
                                      isLoading: (state is AddItemsSuccessState)
                                          ? false
                                          : true,

                                      onTap: (p0) {
                                        print("here from ItemCards");
                                      },
                                      items: (state is AddItemsSuccessState)
                                          ? cubit.itemsLoaded
                                          : [],
                                    ),
                                  )
                                  .toList(),
                            );
                          }
                          return Center(
                            child: SizedBox(
                              height: 150,
                              width: 150,
                              child: Text("data"),
                            ),
                          );
                        },
                      ),

                      //  ,
                      //   BlocBuilder<AddItemsCubit, AddItemsState>(
                      //     builder: (context, state) {
                      //       return ItemCards(
                      //         isLoading: (state is AddItemsSuccessState)
                      //             ? false
                      //             : true,

                      //         controllerSearch: controllerSearch,
                      //         items: (state is AddItemsSuccessState)
                      //             ? state.items
                      //             : [],
                      //       );
                      //     },
                      //   ),
                      // ItemCards(),
                      // ItemCards(),
                      // ItemCards(),
                      FilledButton(
                        onPressed: () {
                          cubit.addItem(insert: ItemInsert());
                        },
                        child: Text("New item"),
                      ),
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

class ItemInsert extends Equatable {
  String? name;
  double? price;
  String? url;

  ItemInsert({this.name, this.price, this.url});

  @override
  List<Object?> get props => [name, price, url];
}
