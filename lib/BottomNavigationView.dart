import 'package:flutter/material.dart';
import 'package:netflix_clone_practice/Screens/HomeScreenView.dart';
import 'package:netflix_clone_practice/Screens/NewsScreenView.dart';
import 'package:netflix_clone_practice/Screens/SearchScreenView.dart';

class BottomNavigationView extends StatefulWidget {
  const BottomNavigationView({super.key});

  @override
  State<BottomNavigationView> createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: Container(
            height: 70,
            color: Colors.black,
            child: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.search), text: "Search"),
                Tab(icon: Icon(Icons.newspaper), text: "News")
              ],
              indicatorColor: Colors.transparent,
              labelColor: Colors.white,
              unselectedLabelColor: Color.fromARGB(255, 63, 63, 63),
            ),
          ),
          body: const TabBarView(
            children: [HomeScreenView(), SearchScreenView(), NewsScreenView()],
          ),
        ));
  }
}
