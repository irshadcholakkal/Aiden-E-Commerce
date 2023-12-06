import 'package:aiden/model/getx_controller.dart';
import 'package:aiden/utils/texts.dart';
import 'package:aiden/utils/variables.dart';
import 'package:aiden/view/signin_pages/login_screen/login_screen.dart';
import 'package:aiden/view/signin_pages/signup_page/signup_page.dart';
import 'package:aiden/view/widgets/custome_button.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:aiden/utils/images.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ContentsOfSplashScreen extends StatelessWidget {
  ContentsOfSplashScreen({super.key});
  final SplashControl controller = Get.put(SplashControl());
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    hight = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    final List<Widget> slides = [
      firstSlide(),
      secondSlide(),
      thirdSlide(context)
    ];
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: hight! * 0.91,
              width: width,
              child: PageView(
                controller: _pageController,
                children: slides,
                onPageChanged: (int index) {
                  controller.currentPage.value = index;
                },
              )),
          SizedBox(
            height: hight! * 0.05,
            width: width,
            child: Obx(
              () => DotsIndicator(
                dotsCount: slides.length,
                position: controller.currentPage.value,
                decorator: const DotsDecorator(
                    spacing: EdgeInsets.all(15), activeColor: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget firstSlide() {
  return Column(
    children: [
      SizedBox(
        height: hight! * 0.1,
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
      FittedBox(
        child: SizedBox(
          height: hight! * 0.1,
          width: width! * 0.9,
          child: firstSlideTextMain,
        ),
      ),
      SizedBox(
        height: hight! * 0.025,
      ),
      FittedBox(
        child: SizedBox(
          height: hight! * 0.15,
          width: width! * 0.9,
          child: firstSlideTextsub,
        ),
      ),
    ],
  );
}

Widget secondSlide() {
  return Column(
    children: [
      SizedBox(
        height: hight! * 0.1,
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
      FittedBox(
        child: SizedBox(
          height: hight! * 0.1,
          width: width! * 0.9,
          child: secondSlideTextMain,
        ),
      ),
      SizedBox(
        height: hight! * 0.025,
      ),
      FittedBox(
        child: SizedBox(
          height: hight! * 0.15,
          width: width! * 0.9,
          child: secondSlideTextsub,
        ),
      ),
    ],
  );
}

Widget thirdSlide(BuildContext context) {
  return Column(
    children: [
      SizedBox(
        height: hight! * 0.08,
      ),
      Center(
        child: Container(
            height: hight! * 0.6,
            width: width! * 0.9,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: thirdSlideImage),
      ),
      SizedBox(
        height: hight! * 0.05,
      ),
      customeButton(
        bgColor: const MaterialStatePropertyAll(Colors.black),
        text: "Login",
        context: context,
        onpressed: () {
         Get.to(const Loginscreen());
          // Please change the route from here //
        },
      ),
      SizedBox(
        height: hight! * 0.02,
      ),
      customeButton(
        bgColor: const MaterialStatePropertyAll(Colors.black),
        text: "SignUp",
        context: context,
        onpressed: () {
         Get.to( const SignupPage());
          // Please change the route from here //
        },
      )
    ],
  );
}
