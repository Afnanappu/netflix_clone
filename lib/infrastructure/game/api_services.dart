import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:netflix/infrastructure/game/model/game_model.dart';

class GameApiServices {
  final Dio dio = Dio();
  final url = "https://www.freetogame.com/api/games";
  Future<List<GameModel>> fetchGameFromApi() async {
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        final list =
            List<GameModel>.from(response.data.map((x) => GameModel.fromJson(x)));
        return list ;
      }
      return [];
    } on Exception catch (e) {
      log(e.toString());
      return [];
    }
  }
}
