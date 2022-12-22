// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  double height,
      width,
      marginTop,
      marginBottom,
      marginLeft,
      marginRight,
      radius;
  Widget widget;
  Gradient bgGradient;
  RoundedContainer(
      {Key? key,
      required this.height,
      required this.width,
      required this.marginTop,
      required this.marginBottom,
      required this.marginLeft,
      required this.marginRight,
      required this.radius,
      required this.widget,
      required this.bgGradient});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
        top: marginTop,
        bottom: marginBottom,
        left: marginLeft,
        right: marginRight,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        gradient: bgGradient,
      ),
      child: widget,
    );
  }
}
