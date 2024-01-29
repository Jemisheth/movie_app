import 'dart:convert';

import '../models/toprated_model.dart';
import '../models/trending_model.dart';
import '../models/upcoming_model.dart';
import '../utils/constants.dart';
import 'package:http/http.dart' as http;

class Api {
  static const trending =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=${Constants.apikey}';

  static const toprated =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=${Constants.apikey}';

  static const upcoming =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=${Constants.apikey}';

  Future<List<trendingMovie>> getTrendingMovies() async {
    var res = await http.get(Uri.parse(trending));

    if (res.statusCode == 200) {
      final data = json.decode(res.body)['results'] as List;
      // print(data);
      return data.map((movie) => trendingMovie.fromJson(movie)).toList();
    } else {
      throw Exception('Something wrong');
    }
  }

  Future<List<TopRatedMovies>> getTopratedMovies() async {
    var res = await http.get(Uri.parse(toprated));

    if (res.statusCode == 200) {
      final data = json.decode(res.body)['results'] as List;
      // print(data);
      return data.map((movie) => TopRatedMovies.fromJson(movie)).toList();
    } else {
      throw Exception('Something wrong');
    }
  }

  Future<List<UpcomingMovies>> getUpcomigMovies() async {
    var res = await http.get(Uri.parse(upcoming));

    if (res.statusCode == 200) {
      final data = json.decode(res.body)['results'] as List;
      // print(data);
      return data.map((movie) => UpcomingMovies.fromJson(movie)).toList();
    } else {
      throw Exception('Something wrong');
    }
  }
}
