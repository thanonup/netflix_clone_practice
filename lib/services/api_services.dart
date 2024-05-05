import 'dart:convert';
import 'dart:developer';

import 'package:netflix_clone_practice/beans/tv_series_bean.dart';
import 'package:netflix_clone_practice/beans/upcoming_bean.dart';
import 'package:netflix_clone_practice/common/utils.dart';
import 'package:http/http.dart' as http;

const baseUrl = "https://api.themoviedb.org/3";
var key = "?api_key=$apiKey";
late String endPoint;

class ApiServices {
  Future<UpcomingMoiveBean> getUpcomingMovies() async {
    endPoint = "/movie/upcoming";
    final url = "$baseUrl$endPoint$key";

    final reponse = await http.get(Uri.parse(url));

    if (reponse.statusCode == 200) {
      log("Suessce");

      return UpcomingMoiveBean.fromJson(jsonDecode(reponse.body));
    }

    throw Exception("Fialed to load upcoming movies");
  }

  Future<UpcomingMoiveBean> getNowPlayingMovies() async {
    endPoint = "/movie/now_playing";
    final url = "$baseUrl$endPoint$key";

    final reponse = await http.get(Uri.parse(url));

    if (reponse.statusCode == 200) {
      log("Suessce");

      return UpcomingMoiveBean.fromJson(jsonDecode(reponse.body));
    }

    throw Exception("Fialed to load now playing");
  }

  Future<TvSeriesBean> getTopRatedMovies() async {
    endPoint = "/movie/top_rated";
    final url = "$baseUrl$endPoint$key";

    final reponse = await http.get(Uri.parse(url));

    if (reponse.statusCode == 200) {
      log("Suessce load top rated");

      return TvSeriesBean.fromJson(jsonDecode(reponse.body));
    }

    throw Exception("Fialed to load top rated");
  }
}
