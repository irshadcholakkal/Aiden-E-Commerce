

import 'package:aiden/view/login_screen/login_screen.dart';
import 'package:aiden/view/signup_page/signup_page.dart';
import 'package:aiden/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashScreen()
      home: Loginscreen(),

    );
  }
}
