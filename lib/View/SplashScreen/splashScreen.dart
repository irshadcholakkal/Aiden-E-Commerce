import 'dart:async';

import 'package:aiden/Utilis/text.dart';
import 'package:aiden/View/SplashScreen/splashContents.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const ContentsOfSplashScreen() ,));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("Assets/infinity.json",height:20),
          Center(
            child: brandName(30.00, Colors.black, FontWeight.w500)
            
          )
        ],
      ),
    );
  }
}
