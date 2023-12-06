import 'package:aiden/view/carts/products_page.dart';
import 'package:aiden/view/list_of_pages/add_cart/cartpage.dart';
import 'package:aiden/view/signin_pages/forgot_page/forgotpage.dart';
import 'package:aiden/view/signin_pages/login_screen/login_screen.dart';
import 'package:aiden/view/signin_pages/splash_screen/splash_screen.dart';
import 'package:aiden/view/signin_pages/startshopping/startingpage.dart';
import 'package:aiden/view/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Startingpage());
  }
}
