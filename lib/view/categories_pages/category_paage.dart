import 'package:aiden/view/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.red,
        height: double.infinity,
        width: double.infinity,
       
      ),
      bottomNavigationBar: navBar(context:context),
    );
  }
}
