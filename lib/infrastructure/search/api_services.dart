import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:netflix/core/string.dart';
import 'package:netflix/core/tmdb.dart';
import 'package:netflix/infrastructure/search/model/search_movie_model.dart';

class SearchMovieApiServices {
  final Dio dio = Dio();

  Future<List<Result>> searchMovieFromApi(String value) async {
    try {
      final response = await dio.get(search_base_url,
          queryParameters: {'api_key': API_KEY, 'query': value});
      if (response.statusCode == 200) {
        // // final data = response.data as Map<String, dynamic>;
        // if(response.data['results'] == null || response.data['results'].isEmpty){

        // }
        final obj = SearchMovieModel.fromJson(response.data);
        return obj.results;
      }
      log('Returning empty list for search');
      return [];
    } on Exception catch (e) {
      log("searchMovieFromApi: $e");
      return [];
    }
  }
}
