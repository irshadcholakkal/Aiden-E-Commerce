import 'package:aiden/model/getx_controller.dart';
import 'package:aiden/viewmodel/utils/colors.dart';
import 'package:aiden/viewmodel/utils/images.dart';
import 'package:aiden/viewmodel/utils/variables.dart';
import 'package:aiden/view/list_of_pages/add_cart/cartpage.dart';
import 'package:aiden/view/list_of_pages/home_page.dart';
import 'package:aiden/view/list_of_pages/profile_page/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
    final Control controller = Get.put(Control());

  List<dynamic> listOfPages = [
   const HomePage(),
    Cartpage(),
   const HomePage(),
    Profilepage()
  ];
  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> Scaffold(
          body: listOfPages[controller.selectedPageIndx.value],
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                color: white,
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(135, 51, 50, 50),
                      spreadRadius: .5,
                      blurRadius: 4,
                      blurStyle: BlurStyle.normal),
                ]),
            height: MediaQuery.of(context).size.height * 0.09,
            width: double.infinity,
            child: GNav(
              selectedIndex: controller.selectedPageIndx.value,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              tabBorderRadius: 50,
              padding: const EdgeInsets.all(12),
              tabs: [
                GButton(
                 
                  backgroundColor: gnavBGColor,
                  icon: Icons.abc,
                  text: "Home",
                  textStyle: gnavStyle,
                  leading: gnavhomeImage,
                ),
                GButton(
                
                  icon: Icons.abc,
                  text: "Cart",
                  leading: gnavcartImage,
                  backgroundColor: gnavBGColor,
                  textStyle: gnavStyle,
                ),
                GButton(
                 
                  icon: Icons.abc,
                  text: "Notification",
                  leading: gnavnotificationImage,
                  backgroundColor: gnavBGColor,
                  textStyle: gnavStyle,
                ),
                GButton(
                 
                  icon: Icons.abc,
                  text: "Profile",
                  leading: gnavprofileImage,
                  backgroundColor: gnavBGColor,
                  textStyle: gnavStyle,
                )
              ],
              onTabChange: (value) {
               controller.selectedPageIndx.value = value;
               
              },
            ),
          )),
    );
  }
}
