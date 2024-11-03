import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:netflix/core/string.dart';
import 'package:netflix/core/tmdb.dart';
import 'package:netflix/infrastructure/upcoming_movie/model/upcoming_movie_model.dart';

class UpcomingMovieApiServices {
  final url = "$upcoming_movie_url$API_KEY";
  final dio = Dio();

  Future<UpcomingMovieModel> fetchUpcomingMovieFromApi() async {
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        if (response.data != null && response.data is Map<String, dynamic>) {
          final data = UpcomingMovieModel.fromJson(response.data);
          log('UpcomingMovie are fetched');
          return data;
        }
      }
      throw Exception('fetchUpcomingMovieFromApi, while in try block');
    } on Exception catch (e) {
      throw Exception(
          ' $e. Called fetchUpcomingMovieFromApi while in catch block');
    }
  }
}
