import 'package:aiden/model/product_models/list_of_product_model.dart';
import 'package:aiden/utils/colors.dart';
import 'package:aiden/utils/variables.dart';
import 'package:aiden/view/categories_pages/fatch_api.dart';
import 'package:aiden/view/profile_page/widget/tabbar.dart';
import 'package:aiden/view/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:like_button/like_button.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  String categoryName = "Smart Phones";
  ProductModel usermodel = ProductModel();
  TabController? tabController;
  int selectedIndex = 0;
  bool isLiked = false;
  List<dynamic> likedList = [];
  @override
  void initState() {
    fetch().then((v) => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
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
                  labelStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        child: Tab(
                          text: 'Home Appliances',
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              categoryName,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Expanded(
            child: GridView.builder(
                cacheExtent: 200,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                                          likedList.add(
                                              usermodel.products?[index].title);
                                          print(likedList);
                                        } else {
                                          likedList.removeLast();
                                          print(likedList);
                                        }
                                        return Future(() => isLiked = !isLiked);
                                      },
                                      padding: const EdgeInsets.only(left: 2),
                                      size: 20,
                                    ),
                                  ),
                                )
                              ],
                            )
                          : const CircularProgressIndicator(),
                      ListTile(
                        title: Center(
                            child: Text("${usermodel.products?[index].title}",
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
          ),
        ],
      ),
      bottomNavigationBar: navBar(context: context),
    );
  }

  fetch() async {
    usermodel = await fechfake();
    print("datafetched");
  }
}
