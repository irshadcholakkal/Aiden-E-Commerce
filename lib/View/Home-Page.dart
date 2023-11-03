// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
       double width=MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body:CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight:height*0.25,
            backgroundColor: Colors.transparent,
            
              flexibleSpace: Flexible(
               child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.black,
               ),
                
                ),
              
            ),
            SliverToBoxAdapter()
          ],
        )
        
         
      ),
    );
  }
}