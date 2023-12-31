import 'package:aiden/model/services/cart/cart_store.dart';
import 'package:aiden/viewmodel/utils/colors.dart';
import 'package:aiden/view/list_of_pages/profile_page/pages_in_profile/myorders/completed.dart';
import 'package:aiden/view/list_of_pages/profile_page/pages_in_profile/myorders/ongoing.dart';
import 'package:aiden/view/list_of_pages/profile_page/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Myorder extends StatelessWidget {
 Myorder({super.key});

  List<dynamic> listOfPages = [];



  Widget build(BuildContext context) {
  var screensize = MediaQuery.of(context).size;

    return DefaultTabController(
      
      length: 2,
      child: Scaffold(
        
        appBar: AppBar(
    
        ),
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // const SizedBox(
                    //   width: 20,
                    // ),
                    Text(
                      "My Orders",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: black),
                    ),
                    // const SizedBox(
                    //   width: 40,
                    // ),
                    Obx(()=>
                       Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.transparent, // Transparent background
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                
                                   controller .currentIndex.value = 0;
                               
                                },
                                child: Container(
                                  height: screensize.height*0.045,
                                  width: screensize.width*0.25,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: controller .currentIndex.value == 0
                                          ? Colors.black
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: const Color.fromARGB(
                                              255, 198, 197, 197),
                                          width: 2)),
                                  child: Text(
                                    "Ongoing",
                                    style: TextStyle(
                                        color: controller .currentIndex.value == 0
                                            ? Colors.white
                                            : const Color.fromARGB(
                                                255, 145, 144, 144),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                 
                                    controller .currentIndex.value = 1;
                               
                                },
                                child: Container(
                                  height: screensize.height*0.045,
                                  width: screensize.width*0.25,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color:controller .currentIndex.value == 1
                                          ? Colors.black
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: const Color.fromARGB(
                                              255, 198, 197, 197),
                                          width: 2)),
                                  child: Text(
                                    "Completed",
                                    style: TextStyle(
                                        color:controller .currentIndex.value == 1
                                            ? Colors.white
                                            : const Color.fromARGB(
                                                255, 145, 144, 144),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // const SizedBox(
                    //   width: 20,
                    // ),
                  ],
                ),
                Obx(()=> Expanded(child:controller .currentIndex.value == 0 ? Ongoing(context) : Completed(context))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
