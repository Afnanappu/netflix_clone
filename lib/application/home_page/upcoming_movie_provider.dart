import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/infrastructure/upcoming_movie/api_services.dart';
import 'package:netflix/infrastructure/upcoming_movie/model/upcoming_movie_model.dart';

class UpcomingMovieNotifier extends StateNotifier<List<Result>> {
  UpcomingMovieNotifier() : super([]) {
    fetchDataFromApi();
  }

  void fetchDataFromApi() async {
    try {
      final movieObj = UpcomingMovieApiServices();
      final obj = await movieObj.fetchUpcomingMovieFromApi();
      state = obj.results;
      log('fetchDataFromApi -> fetchUpcomingMovieFromApi: Success');
    } on Exception catch (e) {
      state = [];
      log('fetchDataFromApi -> fetchUpcomingMovieFromApi: failed, $e');
    }
  }
}

final upcomingMovieProvider =
    StateNotifierProvider<UpcomingMovieNotifier, List<Result>>(
  (ref) => UpcomingMovieNotifier(),
);
