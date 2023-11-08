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
                expandedHeight: screensize.height * 0.4,
                floating: false,
                pinned: true,
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
              Container(
                height: screensize.height * 0.13,
                width: screensize.width * 0.8,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(15),),),
                    child: Column(children: [
                      
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
