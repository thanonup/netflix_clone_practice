import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_clone_practice/beans/upcoming_bean.dart';
import 'package:netflix_clone_practice/common/utils.dart';

class MovieCardView extends StatelessWidget {
  final Future<UpcomingMoiveBean> future;
  final String headerText;
  const MovieCardView(
      {super.key, required this.future, required this.headerText});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(children: [
                      SizedBox(
                        height: 10,
                      ),
                      CircularProgressIndicator()
                    ])));
          }

          var data = snapshot.data?.results;
          return Column(
            children: [
              Text(
                headerText + " (${data?.length})",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: data?.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              // color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.network(
                              "$imageUrl${data?[index].posterPath}"),
                        );
                      }))
            ],
          );
        });
  }
}
