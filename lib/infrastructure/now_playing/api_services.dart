import 'dart:developer';
import 'package:netflix/core/string.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:netflix/core/tmdb.dart';
import 'package:netflix/infrastructure/now_playing/model/now_playing_movie_model.dart';

class NowPlayingMovieApiServices {
  final _url = "$now_playing_movie_url$API_KEY";
  final _dio = Dio();

  Future<NowPlayingMovieModel> fetchNowPlayingMovieFromApi() async {
    try {
      // final response = await _dio.get(_url);
      final response = await http.get(Uri.parse(_url));

      if (response.statusCode == 200) {
        // final nowPlaying = NowPlayingMovieModel.fromJson(response.data);
        final nowPlaying = NowPlayingMovieModel.fromRawJson(response.body);
        log('Now playing movies are fetched');
        return nowPlaying;
      }
      throw Exception('ResponseWasNotSuccessful');
    } catch (e) {
      throw Exception(e);
    }
  }
}
