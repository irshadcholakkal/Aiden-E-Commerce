

<<<<<<< HEAD
=======
import 'package:aiden/view/login_screen/login_screen.dart';
import 'package:aiden/view/signup_page/signup_page.dart';
>>>>>>> ee7384d6d09b3e5501c37b09151cdaa480d7c848
import 'package:aiden/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      home: SplashScreen()
=======
      home: Loginscreen()
>>>>>>> ee7384d6d09b3e5501c37b09151cdaa480d7c848
    );
  }
}
