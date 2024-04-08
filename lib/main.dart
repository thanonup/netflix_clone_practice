import 'package:flutter/material.dart';

void main() {
  runApp(const StartPage());
}

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "netflix clone",
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Netflix Clone",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 203, 203, 203),
        ),
      ),
    );
  }
}
