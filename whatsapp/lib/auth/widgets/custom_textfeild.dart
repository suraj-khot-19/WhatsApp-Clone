import 'package:flutter/material.dart';

class CustomTextfeild extends StatelessWidget {
  final TextEditingController controller;
  const CustomTextfeild({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.green,
        cursorHeight: 40,
        decoration: InputDecoration(
            border: UnderlineInputBorder(borderSide: BorderSide(width: 2))),
      ),
    );
  }
}
