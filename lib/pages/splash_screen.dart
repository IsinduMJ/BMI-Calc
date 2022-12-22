// ignore_for_file: sized_box_for_whitespace, use_build_context_synchronously, prefer_const_constructors

import 'package:bmi_cal/pages/homepage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Provides total height and width of our mobile screen
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            radius: 4,
            focalRadius: 0.35,
            center: Alignment.topLeft,
            stops: [0.09, 0.75],
            colors: [
              Color.fromARGB(255, 200, 2, 255),
              Color.fromARGB(255, 126, 20, 255)
            ],
          ),
        ),
        child: Container(
          height: size.height,
          width: double.infinity,
          color: Colors.black.withOpacity(0.075),
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 275,
                  width: 275,
                ),
              ),
              Positioned(
                bottom: 40,
                left: size.width * 0.456,
                child: const CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
