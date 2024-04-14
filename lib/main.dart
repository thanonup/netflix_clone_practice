import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone_practice/HomeScene.dart';
import 'package:netflix_clone_practice/SplashScreen.dart';

void main() {
  runApp(const StartPage());
}

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Clone',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white, fontSize: 24),
              bodyMedium: TextStyle(color: Colors.white, fontSize: 20)),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)
              .copyWith(background: Colors.black),
          fontFamily: GoogleFonts.ptSans().fontFamily,
          useMaterial3: true),
      initialRoute: '/SplashScreen',
      routes: {
        '/SplashScreen': (context) => const SplashScreen(),
        '/HomeScene': (context) => const HomeScene()
      },
    );
  }
}
