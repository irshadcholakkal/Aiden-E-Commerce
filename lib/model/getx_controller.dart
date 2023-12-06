import 'dart:async';

import 'package:aiden/view/signin_pages/splash_screen/splash_slide_page.dart';
import 'package:get/get.dart';

class SplashControl extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 4), () {
      Get.off(() => ContentsOfSplashScreen());
    });
    
  }
   RxInt currentPage = 0.obs;

}
// class control extends GetxController{

 
// }