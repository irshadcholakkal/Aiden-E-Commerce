import 'package:aiden/utils/colors.dart';
import 'package:aiden/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customeButton(
    {String? text,
    void Function()? onpressed,
    MaterialStateProperty<Color?>? bgColor}) {
  return ElevatedButton(
    onPressed: onpressed,
    style: ButtonStyle(
    backgroundColor: bgColor,
    shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
    padding: const MaterialStatePropertyAll(
            EdgeInsets.only(left: 150, right: 150, top: 15, bottom: 15))),
    child: customeText(text: text, textcolor: white),
  );
}
