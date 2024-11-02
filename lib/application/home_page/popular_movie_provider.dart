import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/infrastructure/popular/api_services.dart';
import 'package:netflix/infrastructure/popular/model/popular_movie_model.dart';

class PopularMovieNotifier extends StateNotifier<List<Result>> {
  PopularMovieNotifier() : super([]) {
    fetchData();
  }

  void fetchData() async {
    try {
      final movieObj = PopularMovieApiServices();
      final obj = await movieObj.fetchPopularMovieFromApi();
      final list = obj.results;
      log(list[0].toString());
      state = list;
    } catch (e) {
      log(Exception('PopularMovieNotifier -> fetchData $e').toString());
      state = [];
    }
  }
}

final popularMovieProvider =
    StateNotifierProvider<PopularMovieNotifier, List<Result>>(
  (ref) => PopularMovieNotifier(),
);
