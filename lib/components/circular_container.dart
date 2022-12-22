// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  double height, width, buttonTextSize;
  Color buttonColor, buttonTextColor;
  FontWeight buttonTextWeight;
  String buttonText;
  CircularContainer(
      {Key? key,
      required this.height,
      required this.width,
      required this.buttonTextSize,
      required this.buttonColor,
      required this.buttonTextColor,
      required this.buttonTextWeight,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: buttonColor,
      ),
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: buttonTextSize,
              fontWeight: buttonTextWeight,
              color: buttonTextColor),
        ),
      ),
    );
  }
}
