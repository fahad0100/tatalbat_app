import 'package:any_image_view/any_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:talabat_app/core/extensions/context_extensions.dart';
import 'package:talabat_app/core/services/image_picker.dart';
import 'package:talabat_app/features/add_item_list/presentation/widgets/merge.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/entities/items_entity.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/presentation/pages/add_items_feature_widget.dart';

class ItemCards extends HookWidget {
  const ItemCards({
    super.key,
    required this.items,
    required this.isLoading,
    required this.onTap,
    required this.item,
  });

  final List<ItemsEntity> items;
  final ItemInsert item;
  final bool isLoading;
  final Function(ItemsEntity)? onTap;

  @override
  Widget build(BuildContext context) {
    final controllerSearch = useTextEditingController();
    final priceController = useTextEditingController(
      text: item.price?.toString() ?? "0.0",
    );

    final loadingNotifier = useValueNotifier(isLoading);
    final itemList = useValueNotifier(items);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        loadingNotifier.value = isLoading;
        itemList.value = items;
        controllerSearch.text = item.name ?? "";
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
            controller: controllerSearch,
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
                                  onTap: () {
                                    if (onTap != null) {
                                      onTap!(product);
                                      context.pop();
                                    }
                                  },
                                  leading: AnyImageView(
                                    height: 60,
                                    width: 60,

                                    imagePath: item.url ?? product.url,
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
              StatefulBuilder(
                builder: (context, setState) {
                  return AnyImageView(
                    height: 150,
                    width: 150,
                    imagePath: item.url,
                    onTap: () async {
                      print("hi");

                      final image = await ImagePickerService()
                          .loadImageFromGallery();
                      item.url = image?.path;
                      setState(() {});
                    },
                  );
                },
              ),
              Expanded(
                child: Column(
                  spacing: 8,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OurField.field(
                      label: 'Price',
                      hint: "Price",
                      controller: priceController,
                    ),
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
