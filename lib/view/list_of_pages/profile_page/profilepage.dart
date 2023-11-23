import 'package:aiden/utils/colors.dart';
import 'package:aiden/view/list_of_pages/profile_page/pages_in_profile/settings.dart';
import 'package:aiden/view/list_of_pages/profile_page/widget/fav.dart';
import 'package:aiden/view/list_of_pages/profile_page/widget/listtile.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 243, 243, 243)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/backog.png",
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/settingsog.png")),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 20, right: 20),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: grey),
                          borderRadius: BorderRadius.circular(20)),
                      child: ListTile(
                        leading: SizedBox(
                          child: Image.asset("assets/images/hacker_icon.png"),
                        ),
                        title: const Text("name"),
                        subtitle: const Text("email"),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: grey),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        listtile(
                            text: "Personal details",
                            leading: const Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            ontap: () {}),
                        listtile(
                            text: "My Orders",
                            leading: const Icon(
                              Icons.shopping_bag,
                              color: Colors.black,
                            ),
                            ontap: () {}),
                        listtile(
                            text: "My Favourites",
                            leading:const Icon(Icons.heart_broken,color: black,),
                            ontap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const FavPage()));
                            }),
                        listtile(
                            text: "Shipping Address",
                            leading: const Icon(
                              Icons.fire_truck,
                              color: Colors.black,
                            ),
                            ontap: () {}),
                        listtile(
                            text: "My Card",
                            leading: const Icon(
                              Icons.credit_card,
                              color: Colors.black,
                            ),
                            ontap: () {}),
                        listtile(
                          text: " Settings",
                          leading: const Icon(
                            Icons.settings,
                            color: Colors.black,
                          ),
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Settings()));
                          },
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: grey),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        listtile(
                            text: " FAQs",
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/images/faqs.jpg"),
                            ),
                            ontap: () {}),
                        listtile(
                            text: "Privacy Policy",
                            leading: const Icon(
                              Icons.policy,
                              color: Colors.black,
                            ),
                            ontap: () {}),
                        listtile(
                            text: "Documents",
                            leading: const Icon(
                              Icons.document_scanner,
                              color: Colors.black,
                            ),
                            ontap: () {}),
                        listtile(
                            text: "Help",
                            leading: const Icon(
                              Icons.help,
                              color: Colors.black,
                            ),
                            ontap: () {}),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      //  bottomNavigationBar: navBar(context: context),
    );
  }
}
