import 'package:aiden/utils/colors.dart';
import 'package:aiden/view/list_of_pages/profile_page/widget/listtile.dart';
import 'package:aiden/view/list_of_pages/profile_page/widget/tabbar.dart';
import 'package:aiden/view/list_of_pages/profile_page/widget/textfieldrow.dart';
import 'package:aiden/view/widgets/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

TextEditingController name = TextEditingController();
TextEditingController age = TextEditingController();
TextEditingController email = TextEditingController();

bool notification = false;
bool darkmode = false;

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("assets/images/hacker_icon.png"),
                  ),
                ),
                Text(
                  "Upload image",
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w800, color: black),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,
                  top: 10),
                  child: Container(
                    child: Column(
                      children: [
                        Fieldrow(text: "Name", controller: name),
                        const Tabbar(),
                        Fieldrow(text: "Age", controller: age),
                        Fieldrow(text: "Email", controller: email),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,top: 10),
                      child: Text(
                        "Settings",
                        style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: black),
                      ),
                    ),
                    const SizedBox()
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: grey),
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        listtile(
                          text: "Language",
                          leading: const Icon(
                            Icons.language,
                            color: black,
                          ),
                          trailing: Image.asset(
                            "assets/images/forwardicon.png",
                            width: 30,
                            height: 30,
                          ),
                        ),
                        listtile(
                          text: "Notification",
                          leading: const Icon(
                            Icons.notifications,
                            color: black,
                          ),
                          trailing: Switch(
                            value: notification,
                            activeTrackColor: const Color.fromARGB(179, 191, 191, 191),
                            inactiveTrackColor: black,
                            onChanged: (value) {
                              setState(() {
                                notification = value;
                              });
                            },
                            activeColor: black,
                            inactiveThumbColor:const Color.fromARGB(179, 191, 191, 191),
                          ),
                        ),
                        listtile(
                          text: "Dark Mode",
                          leading: const Icon(
                            Icons.dark_mode,
                            color: black,
                          ),
                          trailing: Switch(
                            value: darkmode,
                            activeTrackColor: const Color.fromARGB(179, 191, 191, 191),
                            inactiveTrackColor: black,
                            onChanged: (value) {
                              setState(() {
                                darkmode = value;
                              });
                            },
                            activeColor: black,
                            inactiveThumbColor: const Color.fromARGB(179, 191, 191, 191),
                          ),
                        ),
                        listtile(
                          trailing: Image.asset(
                            "assets/images/forwardicon.png",
                            height: 30,
                            width: 30,
                          ),
                          text: "Help Center",
                          leading: const Icon(
                            Icons.help,
                            color: black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: customeButton(
                    text: "Logout",
                    context: context,
                    onpressed: () {},
                    bgColor: const MaterialStatePropertyAll(black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
