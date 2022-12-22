// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_print, prefer_const_literals_to_create_immutables

import 'dart:math';
import 'package:bmi_cal/components/circular_container.dart';
import 'package:bmi_cal/components/rounded_container.dart';
import 'package:bmi_cal/pages/output_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int height = 150;
  int weight = 50;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // drawer: ProfileDrawer(),
      body: Container(
        height: size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 2.75,
            focalRadius: 0.25,
            center: Alignment.topLeft,
            stops: [0.09, 0.75],
            colors: [
              Color.fromARGB(255, 200, 2, 255),
              Color.fromARGB(255, 126, 20, 255),
            ],
          ),
        ),
        child: Container(
          height: size.height,
          width: double.infinity,
          color: Colors.black.withOpacity(0.15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 35, right: 20),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.35),
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              ),
              RoundedContainer(
                height: size.height * 0.37,
                width: size.width,
                marginTop: 12.5,
                marginBottom: 25,
                marginLeft: 20,
                marginRight: 20,
                radius: 25,
                bgGradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    // Color.fromARGB(255, 223, 144, 255).withOpacity(0.95),
                    Colors.white.withOpacity(0.75),
                    Colors.white.withOpacity(0.75),
                  ],
                ),
                widget: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 35, left: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Hello,",
                            style: TextStyle(
                              fontSize: 75,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                              fontFamily: 'CameronSansBold',
                              letterSpacing: 1,
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.25),
                                  offset: Offset(2, 2),
                                  blurRadius: 4,
                                )
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "I'm your personal health\nassistant.",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontFamily: 'CameronSansBold',
                              letterSpacing: 1.25,
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.25),
                                  offset: Offset(1, 1),
                                  blurRadius: 1,
                                )
                              ],
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Let's calculate your",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontFamily: 'CameronSansBold',
                              letterSpacing: 1,
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.25),
                                  offset: Offset(1, 1),
                                  blurRadius: 1,
                                )
                              ],
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "Body Mass Index.",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                              fontFamily: 'CameronSans',
                              letterSpacing: 1,
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.25),
                                  offset: Offset(1.5, 1.5),
                                  blurRadius: 2,
                                )
                              ],
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, right: 15),
                        child: Image.asset(
                          'assets/images/health_icon.png',
                          height: 65,
                          width: 65,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedContainer(
                    height: size.height * 0.3,
                    width: size.width * 0.425,
                    marginTop: 0,
                    marginBottom: 30,
                    marginLeft: 15,
                    marginRight: 8,
                    radius: 15,
                    bgGradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(0.75),
                        Colors.white.withOpacity(0.75),
                      ],
                    ),
                    widget: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 2),
                          child: Text(
                            "Height",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontFamily: 'CameronSansBold',
                              letterSpacing: 1,
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.25),
                                  offset: Offset(1, 1),
                                  blurRadius: 1,
                                )
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          "(cm)",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: 'CameronSans',
                          ),
                          textAlign: TextAlign.center,
                        ),
                        GestureDetector(
                          onLongPress: () {
                            setState(() {
                              height = 150;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: CircularContainer(
                              height: 85,
                              width: 85,
                              buttonTextSize: 28,
                              buttonColor: Colors.white,
                              buttonTextColor: Colors.black,
                              buttonTextWeight: FontWeight.w500,
                              buttonText: height.toString(),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  height = height - 1;
                                });
                              },
                              onLongPress: () {
                                setState(() {
                                  height = height - 10;
                                });
                              },
                              child: CircularContainer(
                                height: 40,
                                width: 40,
                                buttonTextSize: 27,
                                buttonColor: Colors.deepPurpleAccent,
                                buttonTextColor: Colors.white,
                                buttonTextWeight: FontWeight.w400,
                                buttonText: ' - ',
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  height = height + 1;
                                });
                              },
                              onLongPress: () {
                                setState(() {
                                  height = height + 10;
                                });
                              },
                              child: CircularContainer(
                                height: 40,
                                width: 40,
                                buttonTextSize: 25,
                                buttonColor: Colors.deepPurpleAccent,
                                buttonTextColor: Colors.white,
                                buttonTextWeight: FontWeight.w400,
                                buttonText: ' + ',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  RoundedContainer(
                    height: size.height * 0.3,
                    width: size.width * 0.425,
                    marginTop: 0,
                    marginBottom: 30,
                    marginLeft: 15,
                    marginRight: 15,
                    radius: 15,
                    bgGradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(0.75),
                        Colors.white.withOpacity(0.75),
                      ],
                    ),
                    widget: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 2),
                          child: Text(
                            "Weight",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontFamily: 'CameronSansBold',
                              letterSpacing: 1,
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.25),
                                  offset: Offset(1, 1),
                                  blurRadius: 1,
                                )
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          "(kg)",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: 'CameronSans',
                          ),
                          textAlign: TextAlign.center,
                        ),
                        GestureDetector(
                          onLongPress: () {
                            setState(() {
                              weight = 50;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: CircularContainer(
                              height: 85,
                              width: 85,
                              buttonTextSize: 28,
                              buttonColor: Colors.white,
                              buttonTextColor: Colors.black,
                              buttonTextWeight: FontWeight.w500,
                              buttonText: weight.toString(),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight = weight - 1;
                                });
                              },
                              onLongPress: () {
                                setState(() {
                                  weight = weight - 10;
                                });
                              },
                              child: CircularContainer(
                                height: 40,
                                width: 40,
                                buttonTextSize: 27,
                                buttonColor: Colors.deepPurpleAccent,
                                buttonTextColor: Colors.white,
                                buttonTextWeight: FontWeight.w400,
                                buttonText: ' - ',
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight = weight + 1;
                                });
                              },
                              onLongPress: () {
                                setState(() {
                                  weight = weight + 10;
                                });
                              },
                              child: CircularContainer(
                                height: 40,
                                width: 40,
                                buttonTextSize: 25,
                                buttonColor: Colors.deepPurpleAccent,
                                buttonTextColor: Colors.white,
                                buttonTextWeight: FontWeight.w400,
                                buttonText: ' + ',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: (() {
                  BMICalculation(context, height, weight);
                }),
                child: Container(
                  height: 55,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27.5),
                    color: Colors.white.withOpacity(0.85),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Calculate',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.deepPurpleAccent,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Icon(
                        Icons.navigate_next,
                        size: 30,
                        color: Colors.deepPurpleAccent,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

BMICalculation(context, int height, int weight) {
  double bmiValue = 0;
  bmiValue = weight / (pow((height / 100), 2));
  Size size = MediaQuery.of(context).size;
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) {
        return OutputPage(bmiValue: bmiValue, height: height);
      },
    ),
  );
}
