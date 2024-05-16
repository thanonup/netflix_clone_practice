import 'dart:convert';
import 'dart:developer';

import 'package:netflix_clone_practice/beans/search_bean.dart';
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

  Future<SearchBean> getSearchedMovie(String searchText) async {
    endPoint = "/search/movie?query=$searchText";
    final url = "$baseUrl$endPoint";

    final reponse = await http.get(Uri.parse(url), headers: {
      'Authorization':
          "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkNDJiN2ExZjdiNTYxMDVjNjdjMWVmYTU4YjM1MTYyMCIsInN1YiI6IjY2MmE2OThjODg2MzQ4MDExZWFlNWNmOSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.qdl8_DxmOyknwkXhcAlMJoMOGHqc92FnYDZqeEMEt5w"
    });

    if (reponse.statusCode == 200) {
      log("Suessce load search");

      return SearchBean.fromJson(jsonDecode(reponse.body));
    }

    throw Exception("Fialed to load Search");
  }
}
