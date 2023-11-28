import 'package:aiden/utils/colors.dart';
import 'package:aiden/view/list_of_pages/profile_page/pages_in_profile/myorders/completed.dart';
import 'package:aiden/view/list_of_pages/profile_page/pages_in_profile/myorders/ongoing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _MyorderState();
}

class _MyorderState extends State<Cartpage> {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/backword.jpg",
                )),
          ),
        ),
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Text(
                  "My Cart",
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w800, color: black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 10, right: 10, left: 10, bottom: 10),
                        child: Container(
                          height: 150,
                          width: 450,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(255, 236, 236, 236),
                                    spreadRadius: 5,
                                    blurRadius: 10,
                                    offset: Offset(7, 5)),
                              ],
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    decoration: const BoxDecoration(),
                                    height: 200,
                                    width: 288,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/prod.jpg",
                                          height: 200,
                                          width: 80,
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Nike shoe",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text("Classic lace snaeakers",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w600),),
                                                          SizedBox(height: 30,),
                                              Row(
                                                children: [
                                                  Text(
                                                    "\$120",
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w900,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                             
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: 2,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
