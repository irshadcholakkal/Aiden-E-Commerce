import 'package:aiden/view/home_page/home_page.dart';


import 'package:aiden/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
