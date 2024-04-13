import 'package:flutter/material.dart';
import 'package:netflix_clone_practice/SplashScreen.dart';
import 'package:netflix_clone_practice/HomeScene.dart';

void main() {
  runApp(const StartPage());
}

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Netflix Clone',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: SplashScreen(),
    );
  }
}
