import 'package:aiden/model/fav_model.dart';
import 'package:aiden/model/product_models/list_of_product_model.dart';
import 'package:aiden/model/services/product_details_model_class.dart';
import 'package:aiden/model/services/user_data.dart';
import 'package:aiden/view/carts/products_page.dart';
import 'package:aiden/viewmodel/utils/colors.dart';
import 'package:aiden/viewmodel/utils/variables.dart';
import 'package:aiden/view/list_of_pages/profile_page/widget/fav.dart';
import 'package:aiden/view/widgets/text_widget.dart';
import 'package:aiden/viewmodel/fatch_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        body: Container(
          margin: const EdgeInsets.only(left: 7, right: 7),
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  expandedHeight: screensize.height * 0.33,
                  // floating: false,
                  // pinned: true,
                  centerTitle: false,
                  elevation: 0,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    expandedTitleScale: 1,
                    collapseMode: CollapseMode.parallax,
                  
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: screensize.width * 0.65,
                          height: screensize.height * 0.05,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            brandName(20.0, black, FontWeight.w500),
                            Obx(() {
                              if (controller.userData.value != null) {
                                return CircleAvatar(
                                  maxRadius: screensize.width * 0.048,
                                  backgroundImage:
                                      NetworkImage(userData.photoURL),
                                );
                              } else {
                                return CircularProgressIndicator();
                              }
                            }),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: screensize.width * 0.05,
                            ),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                "Welcome",
                                style: GoogleFonts.poppins(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screensize.height * 0.18,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // SizedBox(width: screensize.width * 0.015),
                                        Container(
                                          height: screensize.height * 0.105,
                                          width: screensize.width * 0.17,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.white),
                                          child: Image.asset(
                                              "assets/images/first demo.jpg"),
                                        ),
                                        SizedBox(
                                            width: screensize.width * 0.015),
                                        Container(
                                          height: screensize.height * 0.12,
                                          width: screensize.width * 0.45,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.white),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                  height: screensize.height *
                                                      0.013),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                      width: screensize.width *
                                                          0.02),
                                                  Text(
                                                    "Axel Arigato",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: black),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                      width: screensize.width *
                                                          0.02),
                                                  SizedBox(
                                                    width:
                                                        screensize.width * 0.43,
                                                    child: Text(
                                                      "Clean 90 Triple Sneakers",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Colors.grey
                                                                  .shade500),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                      width: screensize.width *
                                                          0.02),
                                                  Text(
                                                    "\$245",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),

                                        Container(
                                          height: screensize.height * 0.105,
                                          width: screensize.width * 0.12,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.white,
                                          ),
                                          child: Center(
                                            child: InkWell(
                                              onTap: () {},
                                              child: Container(
                                                  height:
                                                      screensize.height * 0.05,
                                                  width:
                                                      screensize.width * 0.111,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.black,
                                                  ),
                                                  child: Image.asset(
                                                    "assets/images/right-arrow.png",
                                                    color: Colors.white,
                                                  )),
                                            ),
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
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: Column(
              children: [
                SizedBox(
                  height: screensize.height * 0.035,
                  child: Row(
                    children: [
                      Text(
                        "Categories",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: DefaultTabController(
                    initialIndex: selectedIndex,
                    length: 6,
                    child: TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorWeight: 0,
                        indicatorPadding: const EdgeInsets.all(5),
                        tabAlignment: TabAlignment.start,
                        isScrollable: true,
                        onTap: (value) {
                          if (value == 0) {
                            categoryName = "All Items";
                            category = "All Items";
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
                            GoogleFonts.poppins(fontWeight: FontWeight.w600),
                        indicator: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Color.fromARGB(198, 0, 0, 0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        // indicatorPadding: const EdgeInsets.all(5),
                        tabs: const [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            child: Tab(
                              text: 'All Items',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            child: Tab(
                              text: 'Laptops',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            child: Tab(
                              text: 'Fragrances',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            child: Tab(
                              text: 'Skincare',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            child: Tab(
                              text: 'Groceries',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            child: Tab(
                              text: 'Home Appliances',
                            ),
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: screensize.height * 0.055,
                  child: Row(
                    children: [
                      // SizedBox(
                      //   width: screensize.width * 0.1,
                      // ),
                      Text(
                        categoryName,
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w700),
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
                      itemCount: controller.productsList.length,
                      itemBuilder: (BuildContext context, index) {
                        ProductData product = controller.productsList[index];

                        return InkWell(
                          onTap: (){
                            Get.to(ProductPage(imageurls:product.imageUrl ,productdescription: product.productDescription,productname: product.productName,productprice: product.productPrice,));
                          },
                          child: Card(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Stack(alignment: Alignment.topRight, children: [
                                Container(
                                  width: screensize.width,
                                  height: screensize.height * 0.25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      product.imageUrl,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: LikeButton(
                                    onTap: (isLiked) {
                                      print(isLiked);
                                      if (isLiked == false) {
                                        likedListNotify.value.add(FavModel(
                                            image: product.imageUrl,
                                            productNmae: product.productName,
                                            discreption:
                                                product.productDescription,
                                            price: "₹: ${product.productPrice}"));
                                        print(likedListNotify);
                                      } else {
                                        likedListNotify.value.removeLast();
                                        print(likedListNotify);
                                      }
                                      return Future(() => isLiked = !isLiked);
                                    },
                                    padding: const EdgeInsets.only(left: 2),
                                    size: 20,
                                  ),
                                ),
                              ]),
                              //
                              Center(
                                  child: Text(
                                product.productName,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.rubik(),
                              )),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "₹: ${product.productPrice}",
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.rubik(
                                      fontSize: 18, fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          )),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  fetch() async {
    usermodel = await fechfake();
    print("datafetched");
  }
}
