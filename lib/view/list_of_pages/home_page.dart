import 'package:aiden/model/fav_model.dart';
import 'package:aiden/model/product_models/list_of_product_model.dart';
import 'package:aiden/utils/colors.dart';
import 'package:aiden/utils/variables.dart';
import 'package:aiden/view/list_of_pages/profile_page/widget/fav.dart';
import 'package:aiden/viewmodel/fatch_api.dart';
import 'package:aiden/view/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String categoryName = "Smart Phones";
  ProductModel usermodel = ProductModel();
  int selectedIndex = 0;

  // List<dynamic> likedList = [];
  @override
  void initState() {
    fetch().then((v) => setState(() {}));
    super.initState();
  }

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
              ),
              SizedBox(
                height: screensize.height * 0.01,
              ),
              SingleChildScrollView(
                child: DefaultTabController(
                  initialIndex: selectedIndex,
                  length: 6,
                  child: TabBar(
                      isScrollable: true,
                      onTap: (value) {
                        if (value == 0) {
                          categoryName = "Smart Phones";
                          category = "smartphones";

                          fetch().then((v) => setState(() {}));
                        } else if (value == 1) {
                          category = "laptops";

                          categoryName = "Laptops";
                          fetch().then((v) => setState(() {}));
                        } else if (value == 2) {
                          category = "fragrances";

                          categoryName = "Fragrances";
                          fetch().then((v) => setState(() {}));
                        } else if (value == 3) {
                          category = "skincare";

                          categoryName = "Skin Care";
                          fetch().then((v) => setState(() {}));
                        } else if (value == 4) {
                          category = "groceries";

                          categoryName = "Groceries";
                          fetch().then((v) => setState(() {}));
                        } else if (value == 5) {
                          category = "home-decoration";

                          categoryName = "Home Decoration";
                          fetch().then((v) => setState(() {}));
                        }
                      },
                      labelColor: Colors.white,
                      unselectedLabelColor: black,
                      labelStyle:
                          GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      indicator: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color.fromARGB(255, 0, 0, 0),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      // indicatorPadding: const EdgeInsets.all(5),
                      tabs: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            child: Tab(
                              text: 'Smart Phones',
                            ),
                          ),
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            child: Tab(
                              text: 'Laptops',
                            ),
                          ),
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            child: Tab(
                              text: 'Fragrances',
                            ),
                          ),
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            child: Tab(
                              text: 'Skincare',
                            ),
                          ),
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            child: Tab(
                              text: 'Groceries',
                            ),
                          ),
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            child: Tab(
                              text: 'Home Appliances',
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: screensize.height * 0.055,
                child: Row(
                  children: [
                    SizedBox(
                      width: screensize.width * 0.1,
                    ),
                    Text(
                      categoryName,
                      style: GoogleFonts.poppins(
                          fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                    cacheExtent: 200,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: .65,
                            // mainAxisSpacing: 15,
                            // crossAxisSpacing: 15,
                            crossAxisCount: 2),
                    itemCount: usermodel.products?.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          usermodel.products?[index].thumbnail != null
                              ? Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                      child: Image.network(
                                        "${usermodel.products?[index].thumbnail}",
                                        fit: BoxFit.fill,
                                        height: 200,
                                        width: 170,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: black,
                                        child: LikeButton(
                                          onTap: (isLiked) {
                                            print(isLiked);
                                            if (isLiked == false) {
                                              likedListNotify.value.add(FavModel(
                                                  image: usermodel
                                                      .products?[index].images[0],
                                                  productNmae: usermodel
                                                      .products?[index].title,
                                                  discreption: usermodel
                                                      .products?[index]
                                                      .description));
                                              print(likedListNotify);
                                            } else {
                                              likedListNotify.value.removeLast();
                                              print(likedListNotify);
                                            }
                                            return Future(
                                                () => isLiked = !isLiked);
                                          },
                                          padding:
                                              const EdgeInsets.only(left: 2),
                                          size: 20,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              : const CircularProgressIndicator(),
                          ListTile(
                            title: Center(
                                child: Text(
                                    "${usermodel.products?[index].title}",
                                    overflow: TextOverflow.ellipsis,
                                    style: gridTextStyle)),
                            subtitle: Center(
                              child: Text(
                                "${usermodel.products?[index].description}",
                                style: GoogleFonts.poppins(fontSize: 12),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Text(
                            "\$${usermodel.products?[index].price.toDouble()}",
                            style: gridTextStyle,
                          ),
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
        // bottomNavigationBar: navBar(context: context),
      ),
    );
  }

  fetch() async {
    usermodel = await fechfake();
    print("datafetched");
  }
}
