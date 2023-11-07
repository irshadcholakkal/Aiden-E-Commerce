import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body:CustomScrollView(
          slivers: [
            SliverAppBar(automaticallyImplyLeading: false,
              toolbarHeight: screensize.height* 0.25,
            backgroundColor: Colors.transparent,
            stretch: true,
              flexibleSpace: FlexibleSpaceBar(
            title:  
                Container(
                height: 200,
                width: double.infinity,
                color: Colors.black,
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          // child:
                          //  IconButton(onPressed: (){}, 
                          // icon: Image.asset("assets/images/logomenu.png"),color: Colors.white,),
                        )
                      ],
                    )
                  ],
                ),
               ),
                ),
            ),
             SliverToBoxAdapter(
              child: Column(
                children: [
                  Text("data")
                ],
              ),
             )
          ],
        )
        
         
      ),
    );
  }
}