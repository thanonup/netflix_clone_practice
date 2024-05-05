import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:netflix_clone_practice/beans/tv_series_bean.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:netflix_clone_practice/common/utils.dart';

class MoviesPreviewSlider extends StatelessWidget {
  final TvSeriesBean dataBean;
  const MoviesPreviewSlider({super.key, required this.dataBean});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width,
        height: (size.height * 0.33 < 300) ? 250 : size.height * 0.33,
        child: CarouselSlider.builder(
            itemCount: dataBean.results.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              var url = dataBean.results[index].backdropPath.toString();

              return Column(
                children: [
                  GestureDetector(
                      child: CachedNetworkImage(imageUrl: "$imageUrl$url")),
                  const SizedBox(height: 10),
                  Text(
                    dataBean.results[index].title,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 20),
                  )
                ],
              );
            },
            options: CarouselOptions(
                viewportFraction: 0.78,
                height: (size.height * 0.33 < 300) ? 250 : size.height * 0.33,
                aspectRatio: 16 / 9,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal)));
  }
}
