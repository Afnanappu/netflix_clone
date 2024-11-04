import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:netflix/core/string.dart';
import 'package:netflix/core/tmdb.dart';
import 'package:http/http.dart' as http;
import 'package:netflix/infrastructure/popular/model/popular_movie_model.dart';

class PopularMovieApiServices {
  final _url = "$popular_movie_url$API_KEY";
  final _dio = Dio();
  Future<PopularMovieModel> fetchPopularMovieFromApi() async {
    try {
      final response = await http.get(Uri.parse(_url));
      if (response.statusCode == 200) {
        final popularMovies = PopularMovieModel.fromRawJson(response.body);
        log('PopularMovie are fetched');
        return popularMovies;
      }
      throw Exception('fetchPopularMovieFromApiException');
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
