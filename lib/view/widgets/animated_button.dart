import 'package:aiden/utils/colors.dart';
import 'package:aiden/utils/texts.dart';
import 'package:aiden/utils/variables.dart';
import 'package:flutter/material.dart';

class BouncingButton extends StatefulWidget {
  final VoidCallback onTap;
  const BouncingButton({super.key, required this.onTap});

  @override
  State<BouncingButton> createState() => _BouncingButtonState();
}

class _BouncingButtonState extends State<BouncingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Duration _animationDuration = const Duration(milliseconds: 100);
  final Tween<double> _tween = Tween<double>(begin: 1.0, end: 0.90);
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: _animationDuration,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    hight = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        _controller.forward().then((_) {
          _controller.reverse();
        }).then((value) =>  widget.onTap());
        
       
      },
      child: ScaleTransition(
          scale: _tween.animate(
            CurvedAnimation(
              parent: _controller,
              curve: Curves.easeOut,
              reverseCurve: Curves.easeIn,
            ),
          ),
          child: Container(
            width: width! * 0.6,
            height: hight! * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60), color: black),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.shopping_bag_outlined,
                  color: white,
                ),
                SizedBox(
                  width: width! * 0.02,
                ),
                addtocart
              ],
            ),
          )),
    );
  }
}
