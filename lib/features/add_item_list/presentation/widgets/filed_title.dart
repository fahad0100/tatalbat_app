import 'package:flutter/material.dart';

class FieldTitle extends StatelessWidget {
  const FieldTitle({super.key, required this.hintText, required this.label});
  final String hintText;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,

      children: [
        Text(label),
        TextField(
          minLines: 1,
          maxLines: 1,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: UnderlineInputBorder(),
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}
