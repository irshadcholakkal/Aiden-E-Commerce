
import 'dart:async';

import 'package:aiden/view/splash_screen/splash_slide_page.dart';
import 'package:aiden/view/widgets/brandname_text.dart';
import 'package:flutter/material.dart';
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.10,
          ),
          Center(
            child:brandName( 30.00, Colors.black, FontWeight.w500)
      
          ),
          Lottie.asset("assets/infinity.json",height:50)
        ],
      ),
    );
  }
}
