import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix_clone_practice/HomeScene.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/HomeScene');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/image/netflix-logo.png",
        width: 300,
        height: 150,
      ),
    );
  }
}
