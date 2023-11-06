

import 'package:aiden/utils/const.dart';
import 'package:flutter/material.dart';

class ContentsOfSplashScreen extends StatefulWidget {
  const ContentsOfSplashScreen({super.key});

  @override
  State<ContentsOfSplashScreen> createState() => _ContentsState();
}

class _ContentsState extends State<ContentsOfSplashScreen> {
  @override
  Widget build(BuildContext context) {
    hight=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          firstSlide()
          
        ],
      ),
    );
  }
}
Widget firstSlide(){
  return Column(
    children: [
      SizedBox(
        height: hight!*0.13,
      )
,      Center(
        child: Container(
          height: hight!*0.5,
          width: width!*0.9,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
           child: Image.asset("assets/zahir-namane-TjUJJACTav4-unsplash.jpg",
           fit: BoxFit.fill,

        ),
        
        ),
        

        
      
          
          
        ),
      ),
      Text("20% Discount\nNew Arrival Products")

      

    ],

  );
}