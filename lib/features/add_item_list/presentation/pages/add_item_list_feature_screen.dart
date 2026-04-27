import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:talabat_app/core/extensions/font_extensions.dart';
import 'package:talabat_app/core/services/image_picker.dart';
import 'package:talabat_app/core/services/insert_service.dart';
import 'package:talabat_app/features/add_item_list/presentation/cubit/add_item_list_cubit.dart';
import 'package:any_image_view/any_image_view.dart';
import 'package:talabat_app/features/add_item_list/presentation/cubit/add_item_list_state.dart';
import 'package:talabat_app/features/add_item_list/presentation/widgets/merge.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/presentation/pages/add_items_feature_widget.dart';

class AddItemListFeatureScreen extends HookWidget {
  const AddItemListFeatureScreen({super.key, required this.isEdit});
  final bool isEdit;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AddItemListCubit>();
    double totalHeight = kToolbarHeight + MediaQuery.of(context).padding.top;

    final nameController = useTextEditingController(
      text: GetIt.I.get<InsertService>().nameList,
    );
    final descriptionController = useTextEditingController(
      text: GetIt.I.get<InsertService>().description,
    );

    nameController.addListener(() {
      GetIt.I.get<InsertService>().nameList = nameController.text;
    });

    descriptionController.addListener(() {
      GetIt.I.get<InsertService>().description = descriptionController.text;
      print(GetIt.I.get<InsertService>().description);
    });

    return Scaffold(
      appBar: AppBar(title: const Text('AddItemList Feature Screen')),

      floatingActionButton: FloatingActionButton.small(
        onPressed: isEdit
            ? () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddItemsFeatureWidget(),
                  ),
                );
              }
            : () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddItemsFeatureWidget(),
                  ),
                );
              },
        child: Icon(isEdit ? Icons.save : Icons.arrow_circle_right_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),

        child: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: 100.sh - totalHeight + 16,
              child: Column(
                mainAxisAlignment: .spaceBetween,
                children: [
                  // ErrorWidget("exception"),
                  Column(
                    children: [
                      Center(
                        child: BlocBuilder<AddItemListCubit, AddItemListState>(
                          builder: (context, state) {
                            return AnyImageView(
                              imagePath:
                                  GetIt.I.get<InsertService>().pathImageList ??
                                  'https://images.rawpixel.com/image_png_social_square/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvam9iNjgwLTE2Ni1wLWwxZGJ1cTN2LnBuZw.png',
                              border: Border.all(color: Colors.red),
                              height: 200,
                              onTap: () async {
                                final image = await ImagePickerService()
                                    .loadImageFromGallery();
                                if (image != null) {
                                  cubit.updateImage(imagePath: image.path);
                                }
                              },
                              width: 200,
                              fit: BoxFit.cover,
                              borderRadius: BorderRadius.circular(12),
                              enableZoom: true,
                              placeholderWidget: CircularProgressIndicator(),

                              errorWidget: Icon(Icons.error),
                            );
                          },
                        ),
                      ),
                      Gap(6.sizeSH(min: 4, max: 16)),
                      OurField.field(
                        hint: "hint",
                        label: "Name List",
                        controller: nameController,
                      ),
                      Gap(6.sizeSH(min: 4, max: 16)),
                      OurField.form(
                        label: "Description",
                        controller: descriptionController,
                      ),
                    ],
                  ),

                  // FieldBox(),
                  // FieldTitle(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//
///
///
///
///
///
///
///
///
///
///
///
///
///
///