import 'package:aiden/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customeTextField(
    {controller, String? labelText, dynamic icon, bool obsecure = true,String? Function(String?)? validator}) {
  return TextFormField(
    validator:validator,
    obscureText: obsecure,
    controller: controller,
    decoration: InputDecoration(
      enabledBorder: InputBorder.none,
      focusedBorder:
          const UnderlineInputBorder(borderSide: BorderSide(width: .2)),
      labelText: labelText,
      labelStyle: GoogleFonts.poppins(
          fontSize: 20, fontWeight: FontWeight.w500, color: black),
      suffixIcon: icon,
    ),
  );
}
