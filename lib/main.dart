
import 'package:aiden/view/signin_pages/splash_screen/splash_screen.dart';
import 'package:aiden/view/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
        debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
