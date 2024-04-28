import 'dart:convert';
import 'dart:developer';

import 'package:netflix_clone_practice/beans/upcoming_bean.dart';
import 'package:netflix_clone_practice/common/utils.dart';
import 'package:http/http.dart' as http;

const baseUrl = "https://api.themoviedb.org/3";
var key = "?api_key=$apiKey";
late String endPoint;

class ApiServices {
  Future<UpcomingMoiveBean> getUpcomingMoves() async {
    endPoint = "/movie/upcoming";
    final url = "$baseUrl$endPoint$key";

    final reponse = await http.get(Uri.parse(url));

    if (reponse.statusCode == 200) {
      log("Suessce");
      //log(reponse.body);

      return UpcomingMoiveBean.fromJson(jsonDecode(reponse.body));
    }

    throw Exception("Fialed to load upcoming movies");
  }
}
