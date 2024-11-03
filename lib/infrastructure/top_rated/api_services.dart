import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:netflix/core/string.dart';
import 'package:netflix/core/tmdb.dart';
import 'package:netflix/infrastructure/top_rated/model/top_rated_movie_model.dart';

class TopRatedMovieApiServices {
  final url = "$top_rated_movie_url$API_KEY";
  final dio = Dio();

  Future<TopRatedMovieModel> fetchTopRatedMovieFromApi() async {
    try {
      final response = await dio.get(url);
      log('${response.statusCode}');
      if (response.statusCode == 200) {
        if (response.data != null && response.data is Map<String, dynamic>) {
          final data = TopRatedMovieModel.fromJson(response.data);
          log('TopRatedMovie are fetched');
          return data;
        }
      }
      throw Exception('fetchTopRatedMovieFromApi, while in try block');
    } catch (e) {
      throw Exception(
          ' $e. Called fetchTopRatedMovieFromApi while in catch block');
    }
  }
}
