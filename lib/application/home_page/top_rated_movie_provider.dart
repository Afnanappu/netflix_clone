import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/infrastructure/top_rated/api_services.dart';
import 'package:netflix/infrastructure/top_rated/model/top_rated_movie_model.dart';

class TopRatedMovieNotifier extends StateNotifier<List<Result>> {
  TopRatedMovieNotifier() : super([]) {
    fetchDataFromApi();
  }

  void fetchDataFromApi() async {
    try {
      final movieObj = TopRatedMovieApiServices();
      final obj = await movieObj.fetchTopRatedMovieFromApi();
      state = obj.results;
      log('fetchDataFromApi -> fetchTopRatedMovieFromApi: Success');
    } on Exception catch (e) {
      state = [];
      log('fetchDataFromApi -> fetchTopRatedMovieFromApi: failed, $e');
    }
  }
}

final topRatedMovieProvider =
    StateNotifierProvider<TopRatedMovieNotifier, List<Result>>(
  (ref) => TopRatedMovieNotifier(),
);
