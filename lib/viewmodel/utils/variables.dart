import 'package:aiden/model/get_user_data_model_class.dart';
import 'package:aiden/model/services/user_data.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:aiden/viewmodel/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

double? hight;
double? width;

List<String> dressSizes = [
  "S",
  "M",
  "L",
  "XL",
  "XXL",
];

final gnavStyle = GoogleFonts.poppins(fontWeight: FontWeight.w600);
final stl = GoogleFonts.poppins(
  color: black,
  fontSize: 18,
);
final gridTextStyle = GoogleFonts.poppins(fontWeight: FontWeight.w600);
UserData userData = controller.userData.value!;
