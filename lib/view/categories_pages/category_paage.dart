import 'package:aiden/model/product_models/list_of_product_model.dart';
import 'package:aiden/utils/colors.dart';
import 'package:aiden/utils/variables.dart';
import 'package:aiden/view/categories_pages/fatch_api.dart';
import 'package:aiden/view/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  // ProductModel productModel = ProductModel();
  int selectedindex = 0;
  ProductModel usermodel = ProductModel();
  TabController? tabController;
  @override
  void initState() {
    fetch().then((v) => setState(() {}));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            tabs(context: context),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: usermodel.products?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Container(
                        height: 800,
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Text("${usermodel.products?[index].id}"),
                            usermodel.products?[index].thumbnail != null
                                ? Image.network(
                                    "${usermodel.products?[index].thumbnail}",
                                    fit: BoxFit.fill,
                                    height: 170,
                                    width: 200,
                                  )
                                : const CircularProgressIndicator()
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: navBar(context: context),
    );
  }

  fetch() async {
    usermodel = await fechfake();
    print(
        "pppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppp");
  }

  Widget tabs({
    context,
  }) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child: GNav(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          tabBorderRadius: 50,
          padding: const EdgeInsets.all(12),
          tabs: [
            GButton(
              activeBorder: Border.all(),
              onPressed: () {
                category = "smartphones";
                fetch().then((v) => setState(() {}));
              },
              backgroundColor: gnavBGColor,
              icon: Icons.abc,
              leading: Text(
                "Smart Phones",
                style: stl,
              ),
            ),
            GButton(
              activeBorder: Border.all(),
              onPressed: () {
                category = "laptops";
                fetch().then((v) => setState(() {}));
              },
              icon: Icons.abc,
              leading: Text("Laptops", style: stl),
              backgroundColor: gnavBGColor,
            ),
            GButton(
              activeBorder: Border.all(),
              onPressed: () {
                category = "fragrances";
                fetch().then((v) => setState(() {}));
              },
              icon: Icons.abc,
              leading: Text("Fragrances", style: stl),
              backgroundColor: gnavBGColor,
            ),
            GButton(
              activeBorder: Border.all(),
              onPressed: () {
                category = "skincare";
                fetch().then((v) => setState(() {}));
              },
              icon: Icons.abc,
              leading: Text("Skincare", style: stl),
              backgroundColor: gnavBGColor,
            ),
            GButton(
              activeBorder: Border.all(),
              onPressed: () {
                category = "groceries";
                fetch().then((v) => setState(() {}));
              },
              icon: Icons.abc,
              leading: Text("Groceries", style: stl),
              backgroundColor: gnavBGColor,
            ),
            GButton(
              activeBorder: Border.all(),
              onPressed: () {
                category = "home-decoration";
                fetch().then((v) => setState(() {}));
              },
              icon: Icons.abc,
              leading: Text("Home-decoration", style: stl),
              backgroundColor: gnavBGColor,
            )
          ]),
      // ),
    );
  }
}

final stl = GoogleFonts.poppins(
  color: black,
  fontSize: 18,
);

