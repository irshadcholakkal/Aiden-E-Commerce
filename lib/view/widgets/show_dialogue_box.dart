import 'package:aiden/viewmodel/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

void showAlertDialog(BuildContext context, String title, String message) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
    child: const Text(
      "Continue",
      style: TextStyle(color: black),
    ),
    onPressed: () {
      Get.back();
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    backgroundColor: white,
    title: Text(
      title,
      style: const TextStyle(color: black),
    ),
    content: Text(
      message,
      style: const TextStyle(color: black),
    ),
    actions: [
      continueButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}