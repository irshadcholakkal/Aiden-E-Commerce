import 'package:aiden/utils/colors.dart';
import 'package:aiden/utils/images.dart';
import 'package:aiden/utils/texts.dart';
import 'package:aiden/utils/variables.dart';
import 'package:aiden/view/home_page/home_page.dart';
import 'package:aiden/view/login_screen/login_screen.dart';
import 'package:aiden/view/widgets/custom_textfield.dart';
import 'package:aiden/view/widgets/text_widget.dart';
import 'package:aiden/view/widgets/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confPasswordController = TextEditingController();

  bool isPasswordHide = true;
  bool isCheckBoxEnabled = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    hight = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: const EdgeInsets.all(10),
        height: hight,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            brandName(30.00, Colors.black, FontWeight.w500),
            ListTile(
              title: Text(
                "Sign Up",
                style: GoogleFonts.poppins(
                    fontSize: 30, fontWeight: FontWeight.w600),
              ),
              subtitle: Text("Create an new account",
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w400)),
            ),
            SizedBox(
              width: width! * .87,
              height: hight! * .346,
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customeTextField(
                          controller: userNameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "enter user name";
                            }
                            return null;
                          },
                          labelText: "User Name",
                          icon: userNameController.text.isNotEmpty
                              ? const Icon(
                                  Icons.check_circle_sharp,
                                  color: lightGreen,
                                )
                              : const Icon(
                                  Icons.check_circle_outline,
                                  color: grey,
                                )),
                      customeTextField(
                        controller: emailController,
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
                        labelText: "Email",
                      ),
                      customeTextField(
                          controller: passwordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "enter new password";
                            }
                            if (value.length < 8) {
                              return "password must be  8 digit ";
                            }
                            return null;
                          },
                          labelText: "Password",
                          obsecure: isPasswordHide,
                          icon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isPasswordHide = !isPasswordHide;
                                });
                              },
                              icon: isPasswordHide ? hideImage : viewImage)),
                      customeTextField(
                          controller: confPasswordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "confirm your password";
                            }
                            if (value != passwordController.text) {
                              return "does not match password";
                            }
                            return null;
                          },
                          labelText: "Confirm Password",
                          obsecure: isPasswordHide,
                          icon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isPasswordHide = !isPasswordHide;
                                });
                              },
                              icon: isPasswordHide ? hideImage : viewImage)),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
                leading: Checkbox(
                    // fillColor: MaterialStatePropertyAll(Colors.red),
                    // focusColor: const Color.fromARGB(255, 144, 101, 98),
                    checkColor: const Color.fromARGB(255, 255, 255, 255),
                    activeColor: lightGreen,
                    value: isCheckBoxEnabled,
                    onChanged: (_) {
                      setState(() {
                        isCheckBoxEnabled = _!;
                      });
                    }),
                title: termsAndCondition),
            customeButton(
                context: context,
                text: "Sign up",
                onpressed: () {
                  setState(() {
                    if (_formKey.currentState!.validate()) {
                      if (isCheckBoxEnabled != true) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Center(
                          child: Text(
                            "accept the terms & condition",
                            style: GoogleFonts.poppins(),
                          ),
                        )));
                      } else {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  HomePage()));
                      }
                    }
                  });
                },
                bgColor: const MaterialStatePropertyAll(black))
          ],
        ),
      ),
    );
  }
}
