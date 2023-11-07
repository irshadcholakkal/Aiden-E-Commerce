<<<<<<< HEAD
import 'package:aiden/view/home_page/home_page.dart';
=======


import 'package:aiden/view/splash_screen/splash_screen.dart';
>>>>>>> 25d3b8ee14209873ce67d28249bee458b5785e54
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
      home: HomePage()
=======
      home: SplashScreen()
>>>>>>> 25d3b8ee14209873ce67d28249bee458b5785e54
    );
  }
}
