import 'package:aiden/view/forgot_page/forgotpage.dart';
import 'package:aiden/view/home_page/home_page.dart';
import 'package:aiden/view/login_screen/login_screen.dart';
import 'package:aiden/view/profile_page/profilepage.dart';
import 'package:aiden/view/profile_page/settings.dart';
import 'package:aiden/view/signup_page/signup_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
     home: Profilepage());
  }
}
