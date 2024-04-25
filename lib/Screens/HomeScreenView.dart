import 'package:flutter/material.dart';
import 'package:netflix_clone_practice/beans/upcomingBean.dart';
import 'package:netflix_clone_practice/services/ApiServices.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  late Future<UpcomingMoiveBean> upcomingFuture;
  ApiServices apiService = ApiServices();

  @override
  void initState() {
    super.initState();
    upcomingFuture = apiService.getUpcomingMoves();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          "assets/image/netflix-logo.png",
          width: 120,
          height: 50,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Container(
              color: Colors.blue,
              width: 25,
              height: 25,
            ),
          ),
          const SizedBox(
            width: 30,
          )
        ],
      ),
      body: Center(
        child: Text("Hi This is a Home"),
      ),
    );
  }
}
