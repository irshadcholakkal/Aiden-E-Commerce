import 'dart:async';

import 'package:aiden/model/getx_controller.dart';
import 'package:aiden/view/signin_pages/splash_screen/splash_slide_page.dart';
import 'package:aiden/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
SplashScreen({super.key});
final Control controller =Get.put(Control());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
          ),
          Center(child: brandName(30.00, Colors.black, FontWeight.w500)),
          Lottie.asset("assets/jsons/infinity.json", height: 50)
        ],
      ),
    );
  }
}
