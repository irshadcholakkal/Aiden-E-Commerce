import 'package:aiden/utils/icons.dart';
import 'package:aiden/utils/images.dart';
import 'package:aiden/utils/variables.dart';
import 'package:aiden/view/signup_page/custom_textfield.dart';
import 'package:aiden/view/widgets/brandname_text.dart';
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
          Container(
            width: width! * .8,
            height: hight! * .3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customeTextField(
                    controller: userNameController,
                    labelText: "User Name",
                    icon: Icon(Icons.abc)),
                customeTextField(
                  controller: emailController,
                  labelText: "Email",
                ),
                customeTextField(
                    controller: passwordController,
                    labelText: "Password",
                    icon: IconButton(
                        onPressed: () {
                          setState(() {
                            isPasswordHide = !isPasswordHide;
                          });
                        },
                        icon: isPasswordHide ? passwordHide : eyeIcon)),
                customeTextField(
                    controller: confPasswordController,
                    labelText: "Confirm Password",
                    icon: isPasswordHide ? passwordHide : eyeIcon)
              ],
            ),
          )
        ],
      ),
    ));
  }
}
