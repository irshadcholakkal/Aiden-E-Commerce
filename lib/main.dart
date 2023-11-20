import 'package:aiden/view/categories_pages/category_paage.dart';
import 'package:aiden/view/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CategoryPage());
  }
}
