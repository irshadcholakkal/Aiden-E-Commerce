import 'package:aiden/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fieldrow extends StatelessWidget {
  String text;
  var controller = TextEditingController();
  Fieldrow({super.key,required this.text,required this.controller});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children: [
          Text(text,
            style: GoogleFonts.poppins(
                fontSize: 18, fontWeight: FontWeight.w600, color: grey),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: SizedBox(width: 100,
            height: 40,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: GoogleFonts.poppins(
                fontSize: 20, fontWeight: FontWeight.w500, color: black),
                controller: controller,
                decoration: const InputDecoration(
                  enabledBorder:
                      UnderlineInputBorder(borderSide: BorderSide(width: .2)),
                  focusedBorder:
                      UnderlineInputBorder(borderSide: BorderSide(width: .2)),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          )
        ],
      ),
    );
  }
}
