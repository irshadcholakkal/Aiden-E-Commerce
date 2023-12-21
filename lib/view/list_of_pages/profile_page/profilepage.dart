import 'package:aiden/model/get_user_data_model_class.dart';
import 'package:aiden/model/getx_controller.dart';
import 'package:aiden/model/services/user_data.dart';
import 'package:aiden/viewmodel/utils/colors.dart';
import 'package:aiden/view/list_of_pages/profile_page/pages_in_profile/myorders/Myorder.dart';
import 'package:aiden/view/list_of_pages/profile_page/pages_in_profile/settings.dart';
import 'package:aiden/view/list_of_pages/profile_page/widget/fav.dart';
import 'package:aiden/view/list_of_pages/profile_page/widget/listtile.dart';
import 'package:aiden/view/welcome_page.dart';
import 'package:aiden/viewmodel/utils/variables.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profilepage extends StatelessWidget {
   Profilepage({super.key});

    final Control controller = Get.put(Control());

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
                      child: Obx(
                        (){
              if (controller.userData.value != null) {
                return  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(userData.photoURL),
                    ),
                    title: Text(userData.displayName),
                    subtitle: Text(userData.email),
                  );
                
              } else {
                getUserData();
                return CircularProgressIndicator();
              }
            },
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
                            ontap: () { Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Myorder()));
                                      }),
                        InkWell(
                          onTap: (){
                            Get.to(FavPage());
                          },
                          child: listtile(
                              text: "My Favourites",
                              leading: const Icon(
                                Icons.heart_broken,
                                color: black,
                              ),
                              ),
                        ),
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
                        InkWell(
                          onTap: (){
                            Get.to(Settings());
                          },
                          child: listtile(
                            text: " Settings",
                            leading: const Icon(
                              Icons.settings,
                              color: Colors.black,
                            ),
                           
                          ),
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
