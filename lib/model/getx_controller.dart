import 'dart:async';

import 'package:aiden/model/get_user_data_model_class.dart';
import 'package:aiden/model/services/cart/cart_model.dart';
import 'package:aiden/model/services/cart/cart_store.dart';
import 'package:aiden/model/services/order/order_model.dart';
import 'package:aiden/model/services/product/product_data.dart';
import 'package:aiden/model/services/product/product_details_model_class.dart';
import 'package:aiden/model/services/user_data.dart';
import 'package:aiden/view/no_internet_page.dart';
import 'package:aiden/view/signin_pages/splash_screen/splash_slide_page.dart';
import 'package:aiden/view/welcome_page.dart';
import 'package:connectivity/connectivity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Control extends GetxController {
  @override
  // void onInit() {
  //   super.onInit();
  //   Timer(const Duration(seconds: 4), () {
  //     FirebaseAuth.instance.authStateChanges().listen((User? user) {
  //       if (user == null) {
  //         Get.offAll(() => ContentsOfSplashScreen());
  //       } else {
  //         retrieveAllProductData();
  //         getUserData();
  //         getCartData();

  //         Get.offAll(() =>  WelcomePage());
  //       }
  //     });
  //   });
  // }
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 4), () async {
      // Check for internet connectivity
      var connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult == ConnectivityResult.none) {
        // No internet connection, show a page or display a message
        // Here, you can navigate to a page indicating no internet connection
        Get.off(() => const NetworkError());
      } else {
        // Internet connection available, proceed with authentication and navigation
        FirebaseAuth.instance.authStateChanges().listen((User? user) {
          if (user == null) {
            Get.offAll(() => ContentsOfSplashScreen());
          } else {
            retrieveAllProductData();
            getUserData();
            getCartData();

            Get.offAll(() => WelcomePage());
          }
        });
      }
    });
  }

  RxList<ProductData> productsList = <ProductData>[].obs;
  RxList<CartData> cartData = <CartData>[].obs;
  RxList<OrderData> orderData = <OrderData>[].obs;

  Rx<UserData?> userData = Rx<UserData?>(null);

  RxInt currentPage = 0.obs;
  RxBool isPasswordHide = true.obs;
  RxBool isCheckBoxEnabled = false.obs;
  RxInt selectedPageIndx = 0.obs;
  RxBool notification = false.obs;
  RxBool darkmode = false.obs;
  RxString gender = "male".obs;
  RxDouble totalPrice = 0.0.obs;
  RxDouble tt = 0.0.obs;
  RxInt currentIndex = 0.obs;
}

List data = [];
TextEditingController userNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController confPasswordController = TextEditingController();
