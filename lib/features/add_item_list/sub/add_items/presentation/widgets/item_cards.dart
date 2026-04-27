import 'package:any_image_view/any_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_app/core/navigation/routers.dart';
import 'package:talabat_app/core/services/image_picker.dart';
import 'package:talabat_app/features/add_item_list/presentation/widgets/merge.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/presentation/pages/add_items_feature_widget.dart';
import 'package:talabat_app/features/search/domain/entities/search_entity.dart';

class ItemCards extends HookWidget {
  const ItemCards({
    super.key,
    this.item,
    this.onSelectedMenu,
    this.onPressedRemove,
  });

  final ItemInsert? item;
  final void Function(SearchEntity)? onSelectedMenu;
  final void Function()? onPressedRemove;
  @override
  Widget build(BuildContext context) {
    TextEditingController controllerSearch = useTextEditingController();
    TextEditingController controllerPrice = useTextEditingController();

    useEffect(() {
      controllerSearch.text = item?.name ?? "";
      controllerPrice.text = item?.price?.toString() ?? "";
      return null;
    });

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
                    imagePath: item?.url,
                    onTap: () async {
                      print("hi");

                      final image = await ImagePickerService()
                          .loadImageFromGallery();
                      item?.url = image?.path;
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
                      controller: controllerPrice,
                    ),
                    OutlinedButton(
                      onPressed: onPressedRemove,
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
          Center(
            child: TextButton(
              onPressed: () {
                context.push(Routes.search).then((value) {
                  if (value is SearchEntity && onSelectedMenu != null) {
                    onSelectedMenu!(value);
                  }
                });
              },
              child: Text("Select from Menu"),
            ),
          ),
        ],
      ),
    );
  }
}
