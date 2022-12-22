import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class BMIMeter extends StatefulWidget {
  String text;
  double bmiValue, fontSize;
  Color progressColor, backgroundColor, fontColor;
  BMIMeter({
    Key? key,
    required this.text,
    required this.bmiValue,
    required this.fontSize,
    required this.progressColor,
    required this.backgroundColor,
    required this.fontColor,
  }) : super(key: key);

  @override
  State<BMIMeter> createState() => _BMIMeterState(
      text, bmiValue, fontSize, progressColor, backgroundColor, fontColor);
}

class _BMIMeterState extends State<BMIMeter> {
  final String text;
  final double bmiValue, fontSize;
  final Color progressColor, backgroundColor, fontColor;
  _BMIMeterState(
    this.text,
    this.bmiValue,
    this.fontSize,
    this.progressColor,
    this.backgroundColor,
    this.fontColor,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CircularPercentIndicator(
      radius: size.width * 0.3725,
      lineWidth: 25,
      percent: 1.0,
      animation: true,
      animationDuration: 1000,
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: widget.progressColor,
      backgroundColor: widget.backgroundColor,
      backgroundWidth: 18,
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
              color: fontColor,
              letterSpacing: 2,
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.35),
                  offset: Offset(1, 0),
                  blurRadius: 5,
                )
              ],
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            bmiValue.toStringAsFixed(2),
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w600,
              color: fontColor,
              letterSpacing: 2,
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.35),
                  offset: Offset(1, 0),
                  blurRadius: 5,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
