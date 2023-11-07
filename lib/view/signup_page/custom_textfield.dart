import 'package:flutter/material.dart';

Widget customeTextField({
  controller,
  String? labelText,
  Widget? icon,
}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      enabledBorder: InputBorder.none,
      focusedBorder:
          const UnderlineInputBorder(borderSide: BorderSide(width: .2)),
      labelText: labelText,
      labelStyle:const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      suffixIcon: icon,
    ),
  );
}
