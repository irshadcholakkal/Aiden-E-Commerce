import 'package:aiden/utils/colors.dart';
import 'package:aiden/view/profile_page/widget/listtile.dart';
import 'package:aiden/view/widgets/custom_nav_bar.dart';
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: white),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    //   IconButton(onPressed: () {}, icon: Image.asset("assets/images/backog.png")),
                    //   IconButton(onPressed: () {}, icon: Image.asset("assets/images/settingsog.png"))
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
                    child: const ListTile(
                      leading: SizedBox(),
                      title: Text("name"),
                      subtitle: Text("email"),
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
                          leading: const Icon(Icons.abc),
                          trailing: Image.asset(
                            "assets/images/forwardicon.png",
                            height: 30,
                            width: 30,
                          )),
                      listtile(
                          text: "My Orders",
                          leading: const Icon(Icons.abc),
                          trailing: Image.asset(
                            "assets/images/forwardicon.png",
                            height: 30,
                            width: 30,
                          )),
                      listtile(
                          text: "My Favourites",
                          leading: const Icon(Icons.abc),
                          trailing: Image.asset(
                            "assets/images/forwardicon.png",
                            height: 30,
                            width: 30,
                          )),
                      listtile(
                          text: "Shipping Address",
                          leading: const Icon(Icons.abc),
                          trailing: Image.asset(
                            "assets/images/forwardicon.png",
                            height: 30,
                            width: 30,
                          )),
                      listtile(
                          text: "My Card",
                          leading: const Icon(Icons.abc),
                          trailing: Image.asset(
                            "assets/images/forwardicon.png",
                            height: 30,
                            width: 30,
                          )),
                      listtile(
                          text: " Settings",
                          leading: const Icon(Icons.abc),
                          trailing: Image.asset(
                            "assets/images/forwardicon.png",
                            height: 30,
                            width: 30,
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                child: Column(
                  children: [],
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: navBar(context: context),
    );
  }
}
