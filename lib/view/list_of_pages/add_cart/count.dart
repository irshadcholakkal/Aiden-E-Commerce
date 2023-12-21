import 'package:aiden/viewmodel/utils/variables.dart';
import 'package:flutter/material.dart';

class Counters extends StatefulWidget {
  final void zerohap;
  Counters({super.key, this.zerohap});

  @override
  State<Counters> createState() => _CounterState();
}

class _CounterState extends State<Counters> {
  // int count = counter-1;

  int counter =  1;

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
      if (counter == 0) {
        widget.zerohap;
      }
      // if (counter == 0) {
      //   widget.onDelete;
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    hight = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      height: hight! * 0.038,
      width: width! * 0.21,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 223, 222, 222),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {
                decrement();
              },
              child:
                  const Text("-", style: TextStyle(fontSize: 22, height: 1))),
          Text("$counter",
              style:
                  const TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
          InkWell(
              onTap: () {
                addition();
              },
              child: const Text(
                "+",
                style: TextStyle(fontSize: 18),
              )),
        ],
      ),
    );
  }
}
