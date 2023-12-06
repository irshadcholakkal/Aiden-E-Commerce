import 'package:aiden/utils/colors.dart';
import 'package:aiden/view/welcome_page.dart';
import 'package:aiden/view/widgets/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Startingpage extends StatelessWidget {
  const Startingpage({super.key});

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        height: screensize.height,
        width: screensize.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: screensize.height * .065,
                        width: screensize.width * .2,
                        child: Image.asset(
                          "assets/images/ticks.jpg",
                        )),
                    Text(
                      "Succesful !",
                      style: GoogleFonts.poppins(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 10),
                      child: SizedBox(
                        child: Center(
                          child: Text(
                            "You have succesfully registered in our app and start working in it",
                            style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: customeButton(
                    text: "Start Shopping",
                    context: context,
                    bgColor: const MaterialStatePropertyAll(black),
                    onpressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WelcomePage()));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
