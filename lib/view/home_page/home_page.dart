import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
               SliverAppBar(
                expandedHeight: screensize.height*0.3,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("Collapsing Toolbar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Column(
                      children: [
                        SizedBox(height: screensize.height*0.06,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            CircleAvatar(backgroundColor: Colors.deepOrange,maxRadius: screensize.width*0.04,),
                            SizedBox(width: screensize.width*0.55,),
                            CircleAvatar(backgroundColor: Colors.deepPurple,maxRadius: screensize.width*0.048,)
                          ],
                        ),
                        SizedBox(height: screensize.height*0.02,),
                        Row(
                          children: [
                            SizedBox(width: screensize.width*0.06,),
                            Text("data",style: GoogleFonts.poppins(fontSize: 18),),
                          ],
                        ),
                      ],
                    )),
              ),
            ];
          },
          body: const Center(
            child: Text("Sample"),
          ),
        ),
      ),
    );
  }
}
