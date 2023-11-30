import 'package:aiden/utils/colors.dart';
import 'package:aiden/view/list_of_pages/profile_page/pages_in_profile/myorders/completed.dart';
import 'package:aiden/view/list_of_pages/profile_page/pages_in_profile/myorders/ongoing.dart';
import 'package:aiden/view/list_of_pages/profile_page/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Myorder extends StatefulWidget {
  const Myorder({super.key});

  @override
  State<Myorder> createState() => _MyorderState();
}

class _MyorderState extends State<Myorder> {
  int _currentIndex = 0;
  List<dynamic> listOfPages = [];
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {
                   Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Profilepage()));
                },
                icon: Image.asset(
                  "assets/images/backword.jpg",
                )),
          ),
        ),
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "My Orders",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: black),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
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
                                setState(() {
                                  _currentIndex = 0;
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 100,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: _currentIndex == 0
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
                                      color: _currentIndex == 0
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
                                setState(() {
                                  _currentIndex = 1;
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 100,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: _currentIndex == 1
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
                                      color: _currentIndex == 1
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
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Expanded(child: _currentIndex == 0 ? Ongoing() : Completed()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
