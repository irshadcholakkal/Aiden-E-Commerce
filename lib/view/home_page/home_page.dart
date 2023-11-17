import 'package:aiden/utils/colors.dart';
import 'package:aiden/view/widgets/custom_nav_bar.dart';
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
                backgroundColor: Colors.transparent,
                expandedHeight: screensize.height * 0.31,
                floating: false,
                // pinned: true,
                centerTitle: true,
                elevation: 0,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: screensize.width * 0.4,
                        height: screensize.height * 0.042,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              offset: const Offset(12, 26),
                              blurRadius: 50,
                              spreadRadius: 0,
                              color: Colors.grey.withOpacity(.1)),
                        ]),
                        child: TextField(
                          showCursor: false,
                          style: GoogleFonts.poppins(
                              fontSize: 10, fontWeight: FontWeight.w500),
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 16,
                              color: Colors.black54,
                            ),
                            filled: true,
                            fillColor: Colors.grey.shade300,
                            hintText: "search",
                            hintStyle: const TextStyle(
                                color: Colors.grey, fontSize: 13),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screensize.width * 0.02,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        maxRadius: screensize.width * 0.035,
                        child: Image.asset(
                          "assets/images/settings_icon.png",
                          color: Colors.grey,
                          scale: 2,
                        ),
                      )
                    ],
                  ),
                  background: Column(
                    children: [
                      SizedBox(
                        height: screensize.height * 0.06,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            maxRadius: screensize.width * 0.04,
                            child: Image.asset(
                              "assets/images/logomenu.png",
                              color: Colors.white,
                              scale: 6,
                            ),
                          ),
                          SizedBox(
                            width: screensize.width * 0.55,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.purple.shade100,
                            maxRadius: screensize.width * 0.048,
                            child: Image.asset(
                              "assets/images/hacker_icon.png",
                              width: 35,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: screensize.height * 0.04,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screensize.width * 0.05,
                          ),
                          Text(
                            "Welcome,",
                            style: GoogleFonts.poppins(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screensize.width * 0.05,
                          ),
                          Text(
                            "To Fashion World",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Column(
            children: [
              SizedBox(
                height: screensize.height * 0.02,
              ),
              SizedBox(
                height: screensize.height * 0.17,
                width: screensize.width,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(15),
                      height: screensize.height * 0.14,
                      width: screensize.width * 0.8,
                      decoration: const BoxDecoration(
                        // color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(55, 0, 0, 0),
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],

                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: screensize.height * 0.013),
                          Row(
                            children: [
                              SizedBox(width: screensize.width * 0.015),
                              Container(
                                height: screensize.height * 0.105,
                                width: screensize.width * 0.17,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white),
                                child:
                                    Image.asset("assets/images/first demo.jpg"),
                              ),
                              SizedBox(width: screensize.width * 0.015),
                              Container(
                                height: screensize.height * 0.12,
                                width: screensize.width * 0.45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white),
                                child: Column(
                                  children: [
                                    SizedBox(height: screensize.height * 0.013),
                                    Row(
                                      children: [
                                        SizedBox(
                                            width: screensize.width * 0.02),
                                        Text(
                                          "Axel Arigato",
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color: black),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                            width: screensize.width * 0.02),
                                        SizedBox(
                                          width: screensize.width * 0.43,
                                          child: Text(
                                            "Clean 90 Triple Sneakers",
                                            style: GoogleFonts.poppins(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey.shade500),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                            width: screensize.width * 0.02),
                                        Text(
                                          "\$245",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: screensize.width * 0.015),
                              Container(
                                height: screensize.height * 0.105,
                                width: screensize.width * 0.12,
                                // margin: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Container(
                                      height: screensize.height * 0.05,
                                      width: screensize.width * 0.111,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                      ),
                                      child: Image.asset(
                                        "assets/images/right-arrow.png",
                                        color: Colors.white,
                                      )),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: screensize.height * 0.01,
              ),
              SizedBox(
                height: screensize.height * 0.035,
                child: Row(
                  children: [
                    SizedBox(
                      width: screensize.width * 0.1,
                    ),
                    Text(
                      "Categories",
                      style: GoogleFonts.poppins(
                          fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ), SizedBox(
                height: screensize.height * 0.01,
              ),
              const DefaultTabController(
      length: 4,
      child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: black,
          splashBorderRadius: BorderRadius.all(Radius.circular(100)),
          splashFactory: NoSplash.splashFactory,
          indicator: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.all(Radius.circular(100))),
          indicatorPadding: EdgeInsets.all(6.5),
          tabs: [
            Tab(
              text: 'Dresses',
            ),
            Tab(
              text: 'Jackets',
            ),
            Tab(
              text: 'Jeans',
            ),
            Tab(
              text: 'Shoes',
            )
          ]),
              ),

            ],

          ),
        ),
        bottomNavigationBar: navBar(context: context),
      ),
    );
  }
}
