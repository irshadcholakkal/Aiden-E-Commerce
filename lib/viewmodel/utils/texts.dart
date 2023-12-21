import 'package:aiden/viewmodel/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text firstSlideTextMain = Text(
  "20% Discount New Arrival Products",
  style: GoogleFonts.rubik(fontSize: 30, fontWeight: FontWeight.w500),
);
Text secondSlideTextMain = Text(
  "Take Advantage Of The Offer Shopping",
  style: GoogleFonts.rubik(fontSize: 30, fontWeight: FontWeight.w500),
);

Text firstSlideTextsub = Text(
  "Revamp your style with our latest arrivals! Enjoy an exclusive 20% off. Elevate your wardrobe with trendy, high-quality pieces. From fashion-forward apparel to the perfect accessories, we have it all. Limited time offer. Shop now and be part of the fashion revolution!",
  style: GoogleFonts.rubik(fontSize: 10, fontWeight: FontWeight.w200),
);
Text secondSlideTextsub = Text(
  "Cherish style without compromise. Unbeatable prices meet the latest trends. Elevate your wardrobe with our curated collection. Discover fashion that empowers. Visit us today and experience style that speaks volumes.",
  style: GoogleFonts.rubik(fontSize: 10, fontWeight: FontWeight.w200),
);

Text termsAndCondition = Text.rich(TextSpan(
    text: 'By creating an account you have to agree',
    style: GoogleFonts.poppins(
        fontSize: 15, fontWeight: FontWeight.w200, color: black),
    children: [
      TextSpan(
          text: 'with our terms & condition.',
          style: GoogleFonts.poppins(
              fontSize: 15, fontWeight: FontWeight.w300, color: Colors.purple))
    ]));


Text numberOfReviews = Text(
  "(${"320"}Review)",
  style: GoogleFonts.rubik(fontSize: 10, fontWeight: FontWeight.w200),
);



Text addtocart = Text(
  "Add to cart",
  style: GoogleFonts.rubik(
      fontSize: 20, fontWeight: FontWeight.w500, color: white),
);
