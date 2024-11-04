import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/infrastructure/search/api_services.dart';
import 'package:netflix/infrastructure/search/model/search_movie_model.dart';

class SearchMovieNotifier extends StateNotifier<List<Result>> {
  SearchMovieNotifier() : super([]);

  void searchMovie(String value) async {
    try {
      final movieObj = SearchMovieApiServices();
      state = await movieObj.searchMovieFromApi(value);
    } on Exception catch (e) {
      state = [];
      log("SearchMovieNotifier -> $e");
    }
  }
}

final searchMovieProvider =
    StateNotifierProvider<SearchMovieNotifier, List<Result>>((ref) {
  return SearchMovieNotifier();
});