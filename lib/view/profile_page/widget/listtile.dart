import 'package:aiden/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget listtile({text, Icon? leading, trailing}) {
  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: ListTile(
      leading: leading,
      title: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: black,
        ),
      ),
      trailing: trailing,
    ),
  );
}
