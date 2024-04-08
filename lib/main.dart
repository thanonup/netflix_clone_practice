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
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Netflix Clone"),
          ),
        ));
    ;
  }
}
