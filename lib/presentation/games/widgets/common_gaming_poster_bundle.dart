
import 'package:flutter/material.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/games/widgets/common_gaming_poster.dart';

class CommonGamePosterBundle extends StatelessWidget {
  final String image;
  final String title;
  const CommonGamePosterBundle({
    super.key,
    required this.image, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8,top: 10,bottom: 8),
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
                itemCount: 6,
                itemBuilder: (context, index) {
                  return CommonGamePoster(
                    image: image,
                    title: 'Temple Run',
                    subtitle: 'Adventure',
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