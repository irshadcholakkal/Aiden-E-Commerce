import 'package:aiden/view/home_page/home_page.dart';

<<<<<<< HEAD

import 'package:aiden/view/forgot_page/forgotpage.dart';
import 'package:aiden/view/login_screen/login_screen.dart';
import 'package:aiden/view/signup_page/signup_page.dart';
=======
>>>>>>> 7875db355ad024094d81c15041ff4392656edafe
import 'package:aiden/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginscreen()
    );
=======
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
>>>>>>> 7875db355ad024094d81c15041ff4392656edafe
  }
}
