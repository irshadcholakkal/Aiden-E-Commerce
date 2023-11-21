import 'package:aiden/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget listtile({text, Icon? leading, trailing,void Function()? ontap}) {
  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: ListTile(
      leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 228, 226, 226),
            borderRadius: BorderRadius.circular(20),
          ),
          child: leading),
      title: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 17,
          fontWeight: FontWeight.w700,
          color: black,
        ),
      ),
      trailing:  InkWell(
        onTap: ontap,
        child: Image.asset(
                              "assets/images/forwardicon.png",
                              height: 30,
                              width: 30,
                            ),
      )),
    
  );
}
