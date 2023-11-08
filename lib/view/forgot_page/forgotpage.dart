import 'package:flutter/material.dart';

class Forgotpage extends StatefulWidget {
  const Forgotpage({super.key});

  @override
  State<Forgotpage> createState() => _ForgotpageState();
}

class _ForgotpageState extends State<Forgotpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              // Text(
              //     // "Don’t worry.\nEnter your email and we’ll\nsend you a link to reset your password.",
              //     style: TextStyle(
              //       fontSize: 24,
              //       fontWeight: FontWeight.w600,
              //     )),
              SizedBox(
                height: 30,
              ),
              
             // Textform(hinttext: 'Email',controller: _emailcontroller,),
              SizedBox(
                height: 30,
              ),
             // Textcont(buttontext: 'Continue', myfunction: () {})
            ],
          ),
        ),
      ),
    );
  }
}