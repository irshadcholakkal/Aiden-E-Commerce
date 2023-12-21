import 'dart:async';

import 'package:aiden/model/get_user_data_model_class.dart';
import 'package:aiden/model/services/product_data.dart';
import 'package:aiden/model/services/product_details_model_class.dart';
import 'package:aiden/model/services/user_data.dart';
import 'package:aiden/view/signin_pages/splash_screen/splash_slide_page.dart';
import 'package:aiden/view/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class Control extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 4), () {
      FirebaseAuth.instance.authStateChanges().listen((User? user) {
        if (user == null) {
          Get.offAll(() => ContentsOfSplashScreen());
        } else {
          getUserData();
          
          retrieveAllProductData();

          Get.offAll(() => const WelcomePage());
        }
      });
    });
  }

  RxList<ProductData> productsList = RxList<ProductData>([]);

  Rx<UserData?> userData = Rx<UserData?>(null);
  RxInt currentPage = 0.obs;
  RxBool isPasswordHide = true.obs;
  RxBool isCheckBoxEnabled = false.obs;
  RxInt selectedPageIndx = 0.obs;
  RxBool notification = false.obs;
  RxBool darkmode = false.obs;
  RxString gender = "male".obs;
}
