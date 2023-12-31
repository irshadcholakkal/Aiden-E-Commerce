import 'package:aiden/viewmodel/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              Text(
                "Notification",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
