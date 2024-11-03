import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:netflix/core/string.dart';
import 'package:netflix/core/tmdb.dart';
import 'package:netflix/infrastructure/popular/model/popular_movie_model.dart';

class PopularMovieApiServices {
  final _url = "$popular_movie_url$API_KEY";
  final _dio = Dio();
  Future<PopularMovieModel> fetchPopularMovieFromApi() async {
    try {
      final response = await _dio.get(_url);
      if (response.statusCode == 200) {
        final popularMovies = PopularMovieModel.fromJson(response.data);
       log('PopularMovie are fetched');
        return popularMovies;
      }
      throw Exception('fetchPopularMovieFromApiException');
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
