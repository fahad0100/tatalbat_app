import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:talabat_app/core/extensions/font_extensions.dart';
import 'package:talabat_app/features/add_item_list/presentation/cubit/add_item_list_cubit.dart';
import 'package:any_image_view/any_image_view.dart';
import 'package:talabat_app/features/add_item_list/presentation/widgets/merge.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/presentation/pages/add_items_feature_widget.dart';

class AddItemListFeatureScreen extends StatelessWidget {
  const AddItemListFeatureScreen({super.key, required this.isEdit});
  final bool isEdit;
  @override
  Widget build(BuildContext context) {
    final _ = context.read<AddItemListCubit>();
    double totalHeight = kToolbarHeight + MediaQuery.of(context).padding.top;

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
                        child: AnyImageView(
                          imagePath:
                              'https://images.rawpixel.com/image_png_social_square/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvam9iNjgwLTE2Ni1wLWwxZGJ1cTN2LnBuZw.png',
                          border: Border.all(color: Colors.red),
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                          borderRadius: BorderRadius.circular(12),
                          enableZoom: true,
                          placeholderWidget: CircularProgressIndicator(),

                          errorWidget: Icon(Icons.error),
                        ),
                      ),
                      Gap(6.sizeSH(min: 4, max: 16)),
                      OurField.field(hint: "hint", label: "Name List"),
                      Gap(6.sizeSH(min: 4, max: 16)),
                      OurField.form(label: "Description"),
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