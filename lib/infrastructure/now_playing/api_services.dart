import 'dart:developer';
import 'package:netflix/core/string.dart';
import 'package:dio/dio.dart';
import 'package:netflix/core/tmdb.dart';
import 'package:netflix/infrastructure/now_playing/model/now_playing_movie_model.dart';

class NowPlayingMovieApiServices {
  final _url = "$now_playing_movie_url$API_KEY";
  final _dio = Dio();

  Future<NowPlayingMovieModel> fetchNowPlayingMovieFromApi() async {
    try {
      final response = await _dio.get(_url);
      if (response.statusCode == 200) {
        final nowPlaying = NowPlayingMovieModel.fromJson(response.data);
        log('Now playing movies are fetched');
        return nowPlaying;
      }
      throw Exception('ResponseWasNotSuccessful');
    } catch (e) {
      throw Exception(e);
    }
  }
}
