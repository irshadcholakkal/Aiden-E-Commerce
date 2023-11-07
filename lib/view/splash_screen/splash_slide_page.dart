import 'package:aiden/utils/texts.dart';
import 'package:aiden/utils/variables.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:aiden/utils/images.dart';

class ContentsOfSplashScreen extends StatefulWidget {
  const ContentsOfSplashScreen({super.key});

  @override
  State<ContentsOfSplashScreen> createState() => _ContentsState();
}
PageController _pageController=PageController();
int currentPage=0;
final List<Widget>slides=[firstSlide(),secondSlide(),thirdSlide()];
class _ContentsState extends State<ContentsOfSplashScreen> {
  @override
  Widget build(BuildContext context) {
    hight = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: hight!*0.85,
            width: width!*15,
            child:
             PageView(
            controller: _pageController,
            children:slides,
          )
          ),
          Row(
            children: [
              SizedBox(
                 height: hight!*0.00,
            width: width!*0.0,
            
              ),
               Container(
                color: Colors.black,
            height: hight!*0.04,
            width: width!*0.20,
            child: DotsIndicator(
              dotsCount:slides.length,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start, ),
          )
            ],
          )
         
         
        ],
      ),
    );
  }
}

Widget firstSlide() {
  return Column(
    children: [
      SizedBox(
        height: hight! * 0.12,
      ),
      Center(
        child: Container(
            height: hight! * 0.5,
            width: width! * 0.9,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: firstSlideImage),
      ),
      SizedBox(
        height: hight! * 0.03,
      ),
      SizedBox(
        height: hight! * 0.09,
        width: width! * 0.9,
        child: firstSlideTextMain,
      ),
      SizedBox(
        height: hight! * 0.025,
      ),
      SizedBox(
        height: hight! * 0.06,
        width: width! * 0.9,
        child: firstSlideTextsub,
      ),
    ],
  );
}

Widget secondSlide() {
  return Column(
    children: [
      SizedBox(
        height: hight! * 0.12,
      ),
      Center(
        child: Container(
            height: hight! * 0.5,
            width: width! * 0.9,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: secondSlideImage),
      ),
      SizedBox(
        height: hight! * 0.03,
      ),
      SizedBox(
        height: hight! * 0.09,
        width: width! * 0.9,
        child: secondSlideTextMain,
      ),
      SizedBox(
        height: hight! * 0.025,
      ),
      SizedBox(
        height: hight! * 0.06,
        width: width! * 0.9,
        child: secondSlideTextsub,
      ),
    ],
  );
}

Widget thirdSlide() {
  return Column(
    children: [
      SizedBox(
        height: hight! * 0.12,
      ),
      Center(
        child: Container(
            height: hight! * 0.5,
            width: width! * 0.9,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: thirdSlideImage),
      ),
      SizedBox(
        height: hight! * 0.03,
      ),
      SizedBox(
        height: hight! * 0.09,
        width: width! * 0.9,
        child: thirdSlideTextMain,
      ),
      SizedBox(
        height: hight! * 0.025,
      ),
      SizedBox(
        height: hight! * 0.06,
        width: width! * 0.9,
        child: thirdSlideTextsub,
      ),
    ],
  );
}
