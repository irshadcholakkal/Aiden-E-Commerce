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
      appBar: AppBar(),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          tabs(context: context),
          Text(
            category.toUpperCase(),
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 30),
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
                          ? ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              child: Image.network(
                                "${usermodel.products?[index].thumbnail}",
                                fit: BoxFit.fill,
                                height: 200,
                                width: 170,
                              ),
                            )
                          : const CircularProgressIndicator(),
                      ListTile(
                        title: Center(
                            child: Text("${usermodel.products?[index].title}",
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
final gridTextStyle = GoogleFonts.poppins(fontWeight: FontWeight.bold);
