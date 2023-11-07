import 'package:aiden/utils/colors.dart';
import 'package:aiden/utils/icons.dart';
import 'package:aiden/view/widgets/custom_textfield.dart';
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
                SizedBox(
                  height: 100,
                ),
                brandName(28.0, Colors.black, FontWeight.w600),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        Text(
                          "Welcome !",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "please login to continue our app",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:  TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: _email,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: .2)),
                                focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(width: .2)),
                                labelText: "Email",
                                labelStyle: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: black),
                              ),
                            )
                           
                            ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                               
                                TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                              obscureText: false,
                              controller: _password,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: .2)),
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
                SizedBox(
                  height: 80,
                ),
                // Container(
                //   height: 60,
                //   width: 350,
                //   decoration: BoxDecoration(
                //       color: Colors.black,
                //       borderRadius: BorderRadius.circular(20)),
                //   child: Center(
                //     child: Text(
                //       "Login",
                //       style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 20,
                //           fontWeight: FontWeight.w500),
                //     ),
                //   ),
                // ),
                customeButton(
                    text: 'Login',
                    onpressed: () {},
                    bgColor: MaterialStatePropertyAll(Colors.black)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                          width: 1, color: Color.fromRGBO(138, 138, 141, 1))),
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
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                // Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
