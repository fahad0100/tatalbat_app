import 'package:any_image_view/any_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:sizer/sizer.dart';
import 'package:talabat_app/core/extensions/context_extensions.dart';
import 'package:talabat_app/features/add_item_list/presentation/widgets/merge.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/entities/items_entity.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/presentation/cubit/add_items_cubit.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/presentation/cubit/add_items_state.dart';

class AddItemsFeatureWidget extends HookWidget {
  const AddItemsFeatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controllerSearch = useTextEditingController();

    return BlocProvider(
      create: (context) => AddItemsCubit(GetIt.I.get()),
      child: Builder(
        builder: (context) {
          final cubit = context.read<AddItemsCubit>();
          cubit.getAddItemsMethod();
          controllerSearch.addListener(() {
            print("object");
            cubit.getAddItemsMethod(search: controllerSearch.text);
          });
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
                            controllerSearch: controllerSearch,
                            items: (state is AddItemsSuccessState)
                                ? state.items
                                : [],
                          );
                        },
                      ),
                      BlocBuilder<AddItemsCubit, AddItemsState>(
                        builder: (context, state) {
                          return ItemCards(
                            isLoading: (state is AddLoadingSearchState)
                                ? false
                                : true,

                            controllerSearch: controllerSearch,
                            items: (state is AddItemsSuccessState)
                                ? state.items
                                : [],
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

class ItemCards extends HookWidget {
  const ItemCards({
    super.key,
    required this.items,
    required this.isLoading,
    required this.controllerSearch,
  });

  final List<ItemsEntity> items;
  final bool isLoading;
  final TextEditingController controllerSearch;

  @override
  Widget build(BuildContext context) {
    final loadingNotifier = useValueNotifier(isLoading);
    final itemList = useValueNotifier(items);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        loadingNotifier.value = isLoading;
        itemList.value = items;
      });
      return null;
    }, [isLoading, items, controllerSearch.text]);
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              context.showBottomSheet(
                height: 100.sh,

                widget: ValueListenableBuilder<bool>(
                  valueListenable: loadingNotifier,
                  builder: (context, isSheetLoading, child) {
                    return Column(
                      children: [
                        OurField.field(
                          label: "Search",
                          hint: "Write name item",
                          controller: controllerSearch,
                        ),
                        if (isSheetLoading)
                          LinearProgressIndicator()
                        else
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: false,
                              itemCount: itemList.value.length,
                              itemBuilder: (context, index) {
                                final product = itemList.value[index];
                                return ListTile(
                                  leading: AnyImageView(
                                    height: 60,
                                    width: 60,
                                    imagePath: product.url,
                                  ),
                                  title: Text(product.name),
                                  trailing: Text("ريال ${product.price}"),
                                );
                              },
                            ),
                          ),
                      ],
                    );
                  },
                ),
              );
            },
          ),
          Gap(8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              AnyImageView(height: 150, width: 150),
              Expanded(
                child: Column(
                  spacing: 8,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OurField.field(label: 'Price', hint: "Price"),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(150, 45),
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
