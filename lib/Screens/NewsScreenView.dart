import 'package:flutter/material.dart';

class NewsScreenView extends StatefulWidget {
  const NewsScreenView({super.key});

  @override
  State<NewsScreenView> createState() => _NewsScreenViewState();
}

class _NewsScreenViewState extends State<NewsScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hi This is a News"),
      ),
    );
  }
}
