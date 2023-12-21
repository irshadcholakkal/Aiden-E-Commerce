

import 'package:aiden/model/getx_controller.dart';
import 'package:aiden/viewmodel/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Tabbar extends StatelessWidget {
   Tabbar({super.key});
     final Control controller = Get.put(Control());

Color color = black;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Obx(
        ()=> Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Gender",
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w600, color: grey),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                  color: controller.gender.value == "male" ? color : null,
                ),
                child: Row(
                  children: [
                    Radio(
                        activeColor: white,
                        value: "male",
                        groupValue: controller.gender.value,
                        onChanged: (value) {
                            controller.gender.value = value.toString();
                        }),
                    Expanded(
                      child: Text(
                        'Male',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: controller.gender.value == "male" ? white : black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                  color: controller.gender.value == "female" ? color : null,
                ),
                child: Row(
                  children: [
                    Radio(
                        activeColor: white,
                        value: "female",
                        groupValue: controller.gender.value,
                        onChanged: (value) {
                            controller.gender.value = value.toString();
                        }),
                    Expanded(
                        child: Text(
                      'Female',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: controller.gender.value == "male" ? black : white,
                      ),
                    ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 40,
            )
          ],
        ),
      ),
    );
  }
}
