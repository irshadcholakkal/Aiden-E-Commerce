import 'package:aiden/viewmodel/utils/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import 'package:like_button/like_button.dart';

Widget ratingBar({required double rating,required double minirating,required double size}){
  
  return  RatingBar.builder(
    itemSize: size,
      initialRating: rating,
      minRating: minirating,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      //itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber[700]),
      onRatingUpdate: (rating) {
      },
    );
}

Widget likeButton(){
  return LikeButton(
      circleColor:
          const CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
      bubblesColor: const BubblesColor(
        dotPrimaryColor: Colors.pink,
        dotSecondaryColor: Colors.white,
      ),
      likeBuilder: (bool isLiked) {
        return Icon(
           Iconsax.heart4,
          color: isLiked ? Colors.red : Colors.black,
        );
      },

    );
}



 

