import 'package:flutter/material.dart';

class HomeScene extends StatefulWidget {
  const HomeScene({super.key});

  @override
  State<HomeScene> createState() => _HomeSceneState();
}

class _HomeSceneState extends State<HomeScene> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "netflix clone",
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Image.asset(
            "assets/image/netflix-logo.png",
            width: 120,
            height: 50,
          ),
        ),
      ),
    );
  }
}
