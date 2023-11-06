import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget brandName(size,Colour,Weight){
  return Text("AIDEN", 
            style: GoogleFonts.josefinSans(
              fontSize: size,
              fontWeight:Weight,
              color: Colour));
}