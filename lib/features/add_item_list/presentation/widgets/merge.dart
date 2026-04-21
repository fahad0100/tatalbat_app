import 'package:flutter/material.dart';
import 'package:talabat_app/features/add_item_list/presentation/widgets/field_box.dart';
import 'package:talabat_app/features/add_item_list/presentation/widgets/filed_title.dart';

enum OurFieldEnum { field, form }

class OurField extends StatelessWidget {
  final OurFieldEnum type;
  final String? hint;
  final String label;
  const OurField._({required this.type, this.hint, required this.label});

  factory OurField.field({String? hint, required String label}) {
    return OurField._(type: .field, hint: hint, label: label);
  }
  factory OurField.form({required String label}) {
    return OurField._(type: .form, label: label);
  }

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case .field:
        assert(hint != null, "There is error from ne");
        return FieldTitle(hintText: hint!, label: label);
      case .form:
        return FieldBox(label: label);
    }
  }
}
