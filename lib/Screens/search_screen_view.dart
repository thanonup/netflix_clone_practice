import 'package:flutter/material.dart';

class SearchScreenView extends StatefulWidget {
  const SearchScreenView({super.key});

  @override
  State<SearchScreenView> createState() => _SearchScreenViewState();
}

class _SearchScreenViewState extends State<SearchScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hi This is a Search"),
      ),
    );
  }
}
