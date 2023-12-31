import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NetworkError extends StatelessWidget {
  const NetworkError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 50, 48, 66),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Lottie.asset("assets/jsons/NoInternet.json"))
        ],
      ),
    );
  }
}