import 'dart:developer';
import 'package:netflix/core/string.dart';
import 'package:dio/dio.dart';
import 'package:netflix/infrastructure/now_playing/model/now_playing_movie_model.dart';

class NowPlayingMovieApiServices {
  final url = "https://api.themoviedb.org/3/movie/now_playing?api_key=$API_KEY";

  Future<NowPlayingMovieModel> fetchNowPlayingMovieFromApi() async {
    final dio = Dio();
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        final nowPlaying = NowPlayingMovieModel.fromJson(response.data);
        log('Now playing movies are fetched');
        log(nowPlaying.results[0].toString());
        return nowPlaying;
      }
      throw Exception('ResponseWasNotSuccessful');
    } catch (e) {
      throw Exception(e);
    }
  }
}
