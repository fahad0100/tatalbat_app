import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_app/core/extensions/context_extensions.dart';
import 'package:talabat_app/core/navigation/routers.dart';
import 'package:talabat_app/core/services/insert_service.dart';
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

          return Scaffold(
            appBar: AppBar(
              actions: [IconButton(onPressed: () {}, icon: Icon(Icons.abc))],
            ),
            floatingActionButton: FloatingActionButton.small(
              onPressed: () {
                cubit.save();
              },
              child: Icon(Icons.save),
            ),

            body: BlocListener<AddItemsCubit, AddItemsState>(
              listener: (context, state) {
                switch (state) {
                  case AddSaveAndCloseState _:
                    context.go(Routes.home);
                    break;
                  case AddItemsErrorState _:
                    context.showSnackBar(state.message);
                    break;
                  default:
                }
              },
              child: SafeArea(
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
                                children: List.generate(
                                  state.itemsInsert.length,
                                  (index) => ItemCards(
                                    item: state.itemsInsert[index],
                                    onSelectedMenu: (itemSelected) {
                                      state.itemsInsert[index].name =
                                          itemSelected.nameAr;
                                      state.itemsInsert[index].price =
                                          itemSelected.price;
                                      state.itemsInsert[index].url =
                                          itemSelected.imageUrl;
                                      print(itemSelected.nameAr);
                                      print(itemSelected.price);
                                      print(itemSelected.imageUrl);
                                      cubit.updateUI();
                                    },
                                    onPressedRemove: () {
                                      cubit.remove(index: index);
                                    },
                                  ),
                                ),
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
