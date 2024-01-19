import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Login/LoginWithPhoneNumber.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(milliseconds: 2500),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const LoginWithPhoneNumber())));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0XFFDF2C25),
          image: DecorationImage(
              image: AssetImage("Assets/Splash/bg.jpg"), fit: BoxFit.cover),
        ),
        child: Animate(
          effects: const [
            FadeEffect(duration: Duration(seconds: 1)),
            ScaleEffect(),
            ShimmerEffect(delay: Duration(seconds: 1000))
          ],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
              'Assets/Splash/Rupeyo.gif',
              width: 250,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
