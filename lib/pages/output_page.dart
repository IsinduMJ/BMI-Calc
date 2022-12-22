// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_interpolation_to_compose_strings, unnecessary_this

import 'dart:math';
import 'package:animate_do/animate_do.dart';
import 'package:bmi_cal/components/rounded_container.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../components/bmi_meter.dart';

// ignore: must_be_immutable
class OutputPage extends StatefulWidget {
  final double bmiValue;
  final int height;

  OutputPage({Key? key, required this.bmiValue, required this.height})
      : super(key: key);
  @override
  // ignore: no_logic_in_create_state
  State<OutputPage> createState() => _OutputPageState(bmiValue, height);
}

class _OutputPageState extends State<OutputPage> {
  _OutputPageState(this.bmiValue, this.height);
  double bmiValue;
  int height;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FadeInUp(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              radius: 4,
              focalRadius: 0.35,
              center: Alignment.topLeft,
              stops: [0.09, 0.75],
              colors: [
                Color.fromARGB(255, 126, 20, 255).withOpacity(0.25),
                Color.fromARGB(255, 126, 20, 255).withOpacity(0.85),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 42.5),
                  child: Image.asset(
                    'assets/images/lifestyle.png',
                    height: 265,
                  ),
                ),
                Text(
                  'BMI Value',
                  style: TextStyle(
                    fontSize: 43,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.65),
                        offset: Offset(3, 3),
                        blurRadius: 15,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.5),
                  child: Container(
                    height: size.height * 0.455,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (bmiValue >= 30) ...[
                          BMIMeter(
                            text: 'Obses',
                            bmiValue: bmiValue,
                            fontSize: 45,
                            progressColor: Color.fromARGB(255, 254, 48, 48),
                            backgroundColor: Color.fromARGB(255, 255, 133, 133),
                            fontColor: Color.fromARGB(255, 254, 48, 48),
                          ),
                        ] else if (bmiValue >= 25) ...[
                          BMIMeter(
                            text: 'Over\nWeight',
                            bmiValue: bmiValue,
                            fontSize: 42,
                            progressColor: Color.fromARGB(255, 255, 140, 0),
                            backgroundColor: Color.fromARGB(255, 255, 183, 96),
                            fontColor: Color.fromARGB(255, 255, 140, 0),
                          ),
                        ] else if (bmiValue >= 18.5) ...[
                          BMIMeter(
                            text: 'Healthy',
                            bmiValue: bmiValue,
                            fontSize: 45,
                            progressColor: Color.fromARGB(255, 40, 219, 49),
                            backgroundColor: Color.fromARGB(255, 184, 212, 184),
                            fontColor: Color.fromARGB(255, 40, 219, 49),
                          ),
                        ] else ...[
                          BMIMeter(
                            text: 'Under\nWeight',
                            bmiValue: bmiValue,
                            fontSize: 42,
                            progressColor: Color.fromARGB(255, 255, 228, 26),
                            backgroundColor: Color.fromARGB(255, 255, 239, 95),
                            fontColor: Color.fromARGB(255, 253, 224, 8),
                          ),
                        ]
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
