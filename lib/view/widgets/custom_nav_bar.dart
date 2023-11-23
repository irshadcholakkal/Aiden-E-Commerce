// import 'package:aiden/utils/colors.dart';
// import 'package:aiden/utils/images.dart';
// import 'package:aiden/utils/variables.dart';
// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

// Widget navBar({
//   context,
//   int selectedGnav = 0,
//   int selectedPageIndx = 0,
// }) {
//   return Container(
//     decoration: const BoxDecoration(
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(30), topRight: Radius.circular(30)),
//         color: white,
//         boxShadow: [
//           BoxShadow(
//               color: Color.fromARGB(135, 51, 50, 50),
//               spreadRadius: .5,
//               blurRadius: 4,
//               blurStyle: BlurStyle.normal),
//         ]),
//     height: MediaQuery.of(context).size.height * 0.09,
//     width: double.infinity,
//     child: GNav(
//       selectedIndex: selectedPageIndx,
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       tabBorderRadius: 50,
//       padding: const EdgeInsets.all(12),
//       tabs: [
//         GButton(
//           backgroundColor: gnavBGColor,
//           icon: Icons.abc,
//           text: "Home",
//           textStyle: gnavStyle,
//           leading: gnavhomeImage,
//         ),
//         GButton(
//           icon: Icons.abc,
//           text: "Cart",
//           leading: gnavcartImage,
//           backgroundColor: gnavBGColor,
//           textStyle: gnavStyle,
//         ),
//         GButton(
//           icon: Icons.abc,
//           text: "Notification",
//           leading: gnavnotificationImage,
//           backgroundColor: gnavBGColor,
//           textStyle: gnavStyle,
//         ),
//         GButton(
//           icon: Icons.abc,
//           text: "Profile",
//           leading: gnavprofileImage,
//           backgroundColor: gnavBGColor,
//           textStyle: gnavStyle,
//         )
//       ],
//       onTabChange: (value) {
//         setState(() {
//           selectedPageIndx = value;
//         });
//       },
//     ),
//   );
// }
