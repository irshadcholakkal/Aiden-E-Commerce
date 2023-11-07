import 'package:aiden/utils/colors.dart';
import 'package:aiden/utils/icons.dart';
import 'package:aiden/utils/images.dart';
import 'package:aiden/utils/variables.dart';
import 'package:aiden/view/widgets/custom_textfield.dart';
import 'package:aiden/view/widgets/text_widget.dart';
import 'package:aiden/view/widgets/custome_button.dart';
import 'package:flutter/material.dart';

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

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    hight = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
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
                          return "error";
                        }
                      },
                      labelText: "User Name",
                      icon: Icon(Icons.abc)),
                  customeTextField(
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "error";
                      }
                    },
                    labelText: "Email",
                  ),
                  customeTextField(
                      controller: passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "error";
                        }
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
                          return "error";
                        }
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
          customeButton(
              text: "Login",
              onpressed: () {},
              bgColor:const MaterialStatePropertyAll(black))
        ],
      ),
    ));
  }
}
