import 'package:aiden/viewmodel/utils/colors.dart';
import 'package:flutter/material.dart';

void showSnackBar(BuildContext context,msg,time) {
    final snackBar = SnackBar(
      content: Text(msg,style: const TextStyle(color: white),),
      duration:  Duration(milliseconds: time),
      backgroundColor: black,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }