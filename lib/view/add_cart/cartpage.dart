import 'package:aiden/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  int _currentIndex = 0;
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
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "My Orders",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: black),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.transparent, // Transparent background
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _currentIndex = 0;
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 100,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: _currentIndex == 0
                                        ? Colors.black
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 198, 197, 197),
                                        width: 2)),
                                child: Text(
                                  "Ongoing",
                                  style: TextStyle(
                                      color: _currentIndex == 0
                                          ? Colors.white
                                          : const Color.fromARGB(
                                              255, 145, 144, 144),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _currentIndex = 1;
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 100,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: _currentIndex == 1
                                        ? Colors.black
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 198, 197, 197),
                                        width: 2)),
                                child: Text(
                                  "Completed",
                                  style: TextStyle(
                                      color: _currentIndex == 1
                                          ? Colors.white
                                          : const Color.fromARGB(
                                              255, 145, 144, 144),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: Container(
                //     height: 150,
                //     width: 450,
                //     decoration: BoxDecoration(
                //         color: Colors.white,
                //         boxShadow: const [
                //           BoxShadow(
                //               color: Color.fromARGB(255, 223, 221, 221),
                //               spreadRadius: 5,
                //               blurRadius: 10,
                //               offset: Offset(0, 2)),
                //         ],
                //         borderRadius: BorderRadius.circular(20)),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child: Container(
                //               decoration: const BoxDecoration(),
                //               height: 200,
                //               width: 288,
                //               child: Row(
                //                 children: [
                //                   Image.asset(
                //                     "assets/images/prod.jpg",
                //                     height: 200,
                //                     width: 80,
                //                   ),
                //                   const SizedBox(
                //                     width: 15,
                //                   ),
                //                   const Padding(
                //                     padding: EdgeInsets.all(8.0),
                //                     child: Column(
                //                       crossAxisAlignment:
                //                           CrossAxisAlignment.start,
                //                       children: [
                //                         Text(
                //                           "Nike shoe",
                //                           style: TextStyle(
                //                               fontSize: 18,
                //                               color: Colors.black,
                //                               fontWeight: FontWeight.bold),
                //                         ),
                //                         Text("Classic lace snaeakers",
                //                             style: TextStyle(
                //                                 fontSize: 16,
                //                                 color: Colors.grey,
                //                                 fontWeight: FontWeight.w600)),
                //                         Text("Quality  : 2 ",
                //                             style: TextStyle(
                //                                 fontSize: 16,
                //                                 color: Colors.grey,
                //                                 fontWeight: FontWeight.w600)),
                //                         Text("Size   : 10",
                //                             style: TextStyle(
                //                                 fontSize: 16,
                //                                 color: Colors.grey,
                //                                 fontWeight: FontWeight.w600)),
                //                         Text("Color  : white",
                //                             style: TextStyle(
                //                                 fontSize: 16,
                //                                 color: Colors.grey,
                //                                 fontWeight: FontWeight.w600)),
                //                       ],
                //                     ),
                //                   ),
                //                 ],
                //               )),
                //         ),
                //         const Padding(
                //           padding: EdgeInsets.all(8.0),
                //           child: Text(
                //             "\$120",
                //             style: TextStyle(
                //               fontSize: 22,
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ),
                //         )
                //       ],
                //     ),
                //   ),
                // ),

                
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10,right: 10,left: 10,bottom: 10),
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
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text("Classic lace snaeakers",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey,
                                                      fontWeight: FontWeight.w600)),
                                              Text("Quality  : 2 ",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey,
                                                      fontWeight: FontWeight.w600)),
                                              Text("Size   : 10",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey,
                                                      fontWeight: FontWeight.w600)),
                                              Text("Color  : white",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey,
                                                      fontWeight: FontWeight.w600)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "\$120",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
