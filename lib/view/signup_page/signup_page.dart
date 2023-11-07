import 'package:aiden/utils/colors.dart';
import 'package:aiden/utils/images.dart';
import 'package:aiden/utils/variables.dart';
import 'package:aiden/view/widgets/custom_textfield.dart';
import 'package:aiden/view/widgets/text_widget.dart';
import 'package:aiden/view/widgets/custome_button.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  SignupPage({super.key});

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
        body: SizedBox(
          height: hight,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              brandName(30.00, Colors.black, FontWeight.w500),
              SizedBox(
                width: width! * .8,
                height: hight! * .3,
                child: Form(
                  key: _formKey,
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
              Checkbox(
                  value: isCheckBoxEnabled,
                  onChanged: (_) {
                    setState(() {
                      isCheckBoxEnabled = _!;
                    });
                  }),
              customeButton(
                  text: "Login",
                  onpressed: () {
                    setState(() {
                      _formKey.currentState!.validate();
                      if (_formKey.currentState!.validate()) {}
                    });
                  },
                  bgColor: const MaterialStatePropertyAll(black))
            ],
          ),
        ));
  }
}
