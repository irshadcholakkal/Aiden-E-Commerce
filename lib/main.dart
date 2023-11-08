

import 'package:aiden/view/forgot_page/forgotpage.dart';
import 'package:aiden/view/login_screen/login_screen.dart';
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
      home: Forgotpage()
    );
  }
}
