import 'package:aiden/viewmodel/utils/colors.dart';
import 'package:aiden/view/widgets/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Forgotpage extends StatefulWidget {
  const Forgotpage({super.key});

  @override
  State<Forgotpage> createState() => _ForgotpageState();
}

TextEditingController email = TextEditingController();

final _formKey = GlobalKey<FormState>();

class _ForgotpageState extends State<Forgotpage> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: screensize.height,
          width: screensize.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: screensize.height * .06,
                  ),
                  SizedBox(
                      child: Column(
                    children: [
                      Text("Reset Password",
                          style: GoogleFonts.poppins(
                            fontSize: 26,
                            fontWeight: FontWeight.w800,
                          )),
                      SizedBox(
                        height: screensize.height * .085,
                      ),
                      Text(
                          "please enter your email address, we’ll send you a link to reset your password.",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  )),
                  SizedBox(
                    height: screensize.height * .12,
                  ),
                  SizedBox(
                    child: Column(
                      children: [
                        Form(
                          key: _formKey,
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
                          ),
                        ),
                        SizedBox(
                          height: screensize.height * .24,
                        ),
                        customeButton(
                            context: context,
                            text: 'send',
                            onpressed: () {
                              if (_formKey.currentState!.validate()) {}
                            },
                            bgColor:
                                const MaterialStatePropertyAll(Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
