import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/infrastructure/now_playing/api_services.dart';
import 'package:netflix/infrastructure/now_playing/model/now_playing_movie_model.dart';

class NowPlayingMovieNotifier extends StateNotifier<List<Result>> {
  NowPlayingMovieNotifier() : super([]) {
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final movieObj = NowPlayingMovieApiServices();
      final data = await movieObj.fetchNowPlayingMovieFromApi();
      state = data.results;
      log(state.toString());
    } catch (e) {
      log('Exception caused by NowPlayingMovieNotifier: $e');
      state = [];
    }
  }
}

final nowPlayingMovieProvider =
    StateNotifierProvider<NowPlayingMovieNotifier, List<Result>>(
  (ref) {
    return NowPlayingMovieNotifier();
  },
);
