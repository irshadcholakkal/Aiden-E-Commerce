import 'package:aiden/utils/colors.dart';
import 'package:aiden/view/list_of_pages/add_cart/count.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _MyorderState();
}

class _MyorderState extends State<Cartpage> {
  List<String> cartItems = ["Item 1", "Item 2"];
  // List<int> counts = [1, 1];

  // void onDelete(int index) {
  //   setState(() {
  //     cartItems.removeAt(index);
  //     // counts.removeAt(index);
  //   });
  // }
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

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
            height: screensize.height,
            width: screensize.width,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "My Cart",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: black),
                    ),
                  ),
                  const SizedBox()
                ],
              ),
              SizedBox(
                height: screensize.height * .025,
              ),
              Expanded(
                child: ListView.builder(
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                          padding: const EdgeInsets.only(
                              top: 10, right: 10, left: 10, bottom: 10),
                          child: Slidable(
                            key: ValueKey(cartItems[index]),
                            endActionPane: ActionPane(
                              motion: const ScrollMotion(),
                              dismissible: DismissiblePane(
                                onDismissed: () {
                                  setState(() {
                                    cartItems.removeAt(index);
                                  });
                                },
                              ),
                              children: [
                                SlidableAction(
                                  onPressed: (BuildContext context) {},
                                  backgroundColor: black,
                                  // foregroundColor: Colors.white,
                                  icon: Icons.delete,
                                  label: 'Delete',
                                ),
                              ],
                            ),
                            child: Container(
                              height: screensize.height * 0.18,
                              width: screensize.width * 1,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        color:
                                            Color.fromARGB(255, 236, 236, 236),
                                        spreadRadius: 2,
                                        blurRadius: 10,
                                        offset: Offset(0, 2)),
                                  ],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: screensize.height * .15,
                                          width: screensize.width * 0.2,
                                          child: Image.asset(
                                            "assets/images/prod.jpg",
                                            // height: 200,
                                            // width: 80,
                                          ),
                                        ),
                                        SizedBox(
                                          width: screensize.height * .025,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Nike shoe",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const Text(
                                                "Classic lace snaeakers",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(
                                                height: screensize.height * .04,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text(
                                                    "\$120",
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        screensize.height * .12,
                                                  ),
                                                  Counters(
                                                      // zerohap: () =>
                                                      //   onDelete(index)

                                                      )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ));
                    },
                    itemCount: cartItems.length),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(top: BorderSide(width: .2))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "\$120",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Container(
                          height: screensize.height * .065,
                          width: screensize.width * .5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                          ),
                          child: const Center(
                            child: Text(
                              "Place order",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child:

              //   //  customeButton(
              //   //     text: "Proceed to pay",
              //   //     context: context,
              //   //     onpressed: () {},
              //   //     bgColor: const MaterialStatePropertyAll(black)),
              // )
            ]),
          ),
        ),
      ),
    );
  }
}
