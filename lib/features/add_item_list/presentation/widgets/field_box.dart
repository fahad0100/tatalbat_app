import 'package:flutter/material.dart';

class FieldBox extends StatelessWidget {
  const FieldBox({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(label),
        TextField(
          minLines: 3,
          maxLines: 5,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
