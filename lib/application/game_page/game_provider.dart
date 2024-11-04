import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/infrastructure/game/api_services.dart';
import 'package:netflix/infrastructure/game/model/game_model.dart';

class GameNotifier extends StateNotifier<List<GameModel>> {
  GameNotifier() : super([]) {
    fetchData();
  }

  void fetchData() async {
    try {
      final obj = GameApiServices();
      state = await obj.fetchGameFromApi();
      log('Game fetched from api');
    } on Exception catch (e) {
      state = [];
      log(e.toString());
    }
  }
}

final gameProvider = StateNotifierProvider<GameNotifier, List<GameModel>>(
  (ref) => GameNotifier(),
);
