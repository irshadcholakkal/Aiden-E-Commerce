
import 'package:aiden/model/getx_controller.dart';
import 'package:aiden/model/services/authentication_services.dart';
import 'package:aiden/model/services/user_data.dart';
import 'package:aiden/viewmodel/utils/colors.dart';
import 'package:aiden/viewmodel/utils/images.dart';
import 'package:aiden/view/signin_pages/forgot_page/forgotpage.dart';
import 'package:aiden/view/signin_pages/splash_screen/signup_page/signup_page.dart';
import 'package:aiden/view/signin_pages/startshopping/startingpage.dart';
import 'package:aiden/view/widgets/custome_button.dart';
import 'package:aiden/view/widgets/text_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  final Control controller = Get.put(Control());

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          height: screensize.height,
          width: screensize.width,
          child: Column(children: [
            SizedBox(
              height: screensize.height * .05,
            ),
            brandName(28.0, Colors.black, FontWeight.w600),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screensize.height * 0.045,
                      ),
                      ListTile(
                        title: Text(
                          "Welcome !",
                          style: GoogleFonts.poppins(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                        subtitle: FittedBox(
                          child: Text("Please login to continue our app",
                              style: GoogleFonts.poppins(
                                  fontSize: 20, fontWeight: FontWeight.w400)),
                        ),
                      ),
                      SizedBox(
                        height: screensize.height * 0.045,
                      ),
                      SizedBox(
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
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
                                child: Obx(
                                  () => TextFormField(
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
                                    obscureText:
                                        controller.isPasswordHide.value,
                                    controller: password,
                                    decoration: InputDecoration(
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                                borderSide:
                                                    BorderSide(width: .2)),
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                                borderSide:
                                                    BorderSide(width: .2)),
                                        labelText: "Password",
                                        labelStyle: GoogleFonts.poppins(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: black),
                                        suffixIcon: IconButton(
                                            onPressed: () {
                                              controller.isPasswordHide.value =
                                                  !controller
                                                      .isPasswordHide.value;
                                            },
                                            icon:
                                                controller.isPasswordHide.value
                                                    ? hideImage
                                                    : viewImage)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ])),
            SizedBox(
              height: screensize.height * 0.055,
            ),
            customeButton(
                context: context,
                text: 'Login',
                onpressed: ()async {
                  if (_formKey.currentState!.validate()) {
                    await AuthFunctions().signInWithEmail(email.text.trim(), password.text.trim(),context);
                  
                  }
                },
                bgColor: const MaterialStatePropertyAll(Colors.black)),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "or",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            InkWell(
              onTap: ()async{ 
               await Authentication().signInWithGoogle(); 
                 storeUserData();
              
         },
              child: Container(
                height: screensize.height * .065,
                width: screensize.width * .9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                        width: 1, color: const Color.fromRGBO(138, 138, 141, 1))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60, right: 20),
                      child: Image.asset(
                        'assets/images/googlelogo.png',
                      ),
                    ),
                    Text(
                      'Sign In with Google',
                      style: GoogleFonts.rubik(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don’t have an account yet?",
                          style: TextStyle(
                            color: Color.fromRGBO(145, 145, 159, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                      TextButton(
                        onPressed: () {
                          Get.to(SignupPage());
                        },
                        child: const Text(" Sign Up",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color.fromRGBO(127, 61, 255, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ],
                  ),
                  TextButton(
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Color.fromRGBO(127, 61, 255, 1),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {
                      Get.to(Forgotpage());
                    },
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
