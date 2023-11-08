import 'package:aiden/utils/colors.dart';
import 'package:aiden/utils/icons.dart';
import 'package:aiden/view/widgets/custome_button.dart';
import 'package:aiden/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginscreen extends StatefulWidget {
  Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController _email = TextEditingController();

  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                brandName(28.0, Colors.black, FontWeight.w600),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 80,
                        ),
                        Text(
                          "Welcome !",
                          style: GoogleFonts.rubik(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              letterSpacing: 1),
                        ),
                        Text(
                          "please login to continue our app",
                          style: GoogleFonts.rubik(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: _email,
                              decoration: InputDecoration(
                                enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(width: .2)),
                                focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(width: .2)),
                                labelText: "Email",
                                labelStyle: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: black),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: false,
                              controller: _password,
                              decoration: InputDecoration(
                                enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(width: .2)),
                                focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(width: .2)),
                                labelText: "Password",
                                labelStyle: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: black),
                                suffixIcon: eyeIcon,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                customeButton(
                    text: 'Login',
                    onpressed: () {},
                    bgColor: const MaterialStatePropertyAll(Colors.black)),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "or",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  height: 60,
                  width: 360,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          width: 1,
                          color: const Color.fromRGBO(138, 138, 141, 1))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60, right: 20),
                        child: Image.asset(
                          'assets/images/googlelogo.png',
                        ),
                      ),
                       Text(
                        'Sign Up with Google',
                        style: GoogleFonts.rubik(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
