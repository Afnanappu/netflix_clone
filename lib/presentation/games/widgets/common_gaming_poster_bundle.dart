import 'package:flutter/material.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/infrastructure/game/model/game_model.dart';
import 'package:netflix/presentation/games/widgets/common_gaming_poster.dart';

class CommonGamePosterBundle extends StatelessWidget {
  final List<GameModel> game;
  final String title;
  const CommonGamePosterBundle({
    super.key,
    required this.game,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 10, bottom: 8),
      child: SizedBox(
        height: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: MyTextTheme.posterTitleFont,
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: game.length,
                itemBuilder: (context, index) {
                  return CommonGamePoster(
                    image: game[index].thumbnail,
                    title: game[index].title,
                    subtitle: game[index].genre,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
