import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/infrastructure/popular/api_services.dart';
import 'package:netflix/infrastructure/popular/model/popular_movie_model.dart';

class PopularMovieNotifier extends StateNotifier<List<Result>> {
  PopularMovieNotifier() : super([]) {
    fetchDataFromApi();
  }

  void fetchDataFromApi() async {
    try {
      final movieObj = PopularMovieApiServices();
      final obj = await movieObj.fetchPopularMovieFromApi();

      state = obj.results;
      log('fetchDataFromApi -> fetchPopularMovieFromApi: Success');
    } catch (e) {
      state = [];
      log('fetchDataFromApi -> fetchPopularMovieFromApi: failed, $e');
    }
  }
}

final popularMovieProvider =
    StateNotifierProvider<PopularMovieNotifier, List<Result>>(
  (ref) => PopularMovieNotifier(),
);
