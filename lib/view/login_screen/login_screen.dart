import 'package:aiden/utils/colors.dart';
import 'package:aiden/utils/images.dart';
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
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  bool isPasswordHide = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
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
                        // Text(
                        //   "Welcome !",
                        //   style: GoogleFonts.poppins(
                        //     fontSize: 22,
                        //     fontWeight: FontWeight.w800,
                        //   ),
                        // ),
                        // Text(
                        //   "please login to continue our app",
                        //   style: GoogleFonts.poppins(
                        //     color: Colors.grey,
                        //     fontWeight: FontWeight.w600,
                        //     fontSize: 18,
                        //   ),
                        // ),
                        ListTile(
                          title: Text(
                            "Welcome !",
                            style: GoogleFonts.poppins(
                                fontSize: 30, fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text("Please login to continue our app",
                              style: GoogleFonts.poppins(
                                  fontSize: 20, fontWeight: FontWeight.w400)),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: email,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "enter email address";
                                }
                                if (!RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value)) {
                                  return "enter correct email address";
                                }
                                return null;
                              },
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
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "enter password";
                              }
                              if (value.length < 8) {
                                return "password must be  8 digit ";
                              }
                              return null;
                            },
                            obscureText: isPasswordHide,
                            controller: password,
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
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isPasswordHide = !isPasswordHide;
                                      });
                                    },
                                    icon: isPasswordHide
                                        ? hideImage
                                        : viewImage)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                customeButton(
                    context: context,
                    text: 'Login',
                    onpressed: () {
                    //   setState(() {
                    //     if (_formKey.currentState!.validate()) { {
                    //       Navigator.pushReplacement(
                    //           context,
                    //           MaterialPageRoute(
                    //               builder: (context) => const HomePage()));
                    //     }
                    //   }
                    // });
                    },
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
