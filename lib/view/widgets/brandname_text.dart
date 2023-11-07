import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget brandName(size, colour, weight) {
  return Text("AIDEN",
      style: GoogleFonts.josefinSans(
          fontSize: size, fontWeight: weight, color: colour));
}