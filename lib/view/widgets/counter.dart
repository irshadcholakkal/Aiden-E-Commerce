import 'package:aiden/utils/colors.dart';
import 'package:aiden/utils/variables.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 1;

  void addition() {
    setState(() {
      counter++;
      
    });
  }

  void decrement() {
    setState(() {
      if (counter > 1) {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    hight = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      height: hight! * 0.038,
      width: width! * 0.21,
      decoration: const BoxDecoration(
          color: grey, borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {
                addition();
              },
              child: const Text(
                "+",
                style: TextStyle(fontSize: 18),
              )),
          Text("$counter",
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
          InkWell(
              onTap: () {
                decrement();
              },
              child:
                  const Text("-", style: TextStyle(fontSize: 22, height: 1))),
        ],
      ),
    );
  }
}
