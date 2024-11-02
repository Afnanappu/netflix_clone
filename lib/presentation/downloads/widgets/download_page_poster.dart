import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/core/widgets/common_poster.dart';

class DownloadPagePoster extends StatelessWidget {
  const DownloadPagePoster({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: MyColors.blackHalf,
      radius: 130,
      child: Transform.translate(
        offset: const Offset(-5, 0),
        child: Stack(
          children: [
            Transform.rotate(
              angle: .3,
              origin: const Offset(0, 200),
              child: const CommonPoster(
                isBackgroundImage: false,
                image:
                    'https://img.freepik.com/premium-photo/movie-poster-design-template_841014-30766.jpg?w=360',
              ),
            ),
            Transform.rotate(
              angle: -.3,
              origin: const Offset(0, 200),
              child: const CommonPoster(
                isBackgroundImage: false,
                image:
                    'https://img.freepik.com/premium-photo/movie-poster-design-template_841014-30766.jpg?w=360',
              ),
            ),
            const CommonPoster(
              isBackgroundImage: false,
              image:
                  'https://img.freepik.com/premium-photo/movie-poster-design-template_841014-30766.jpg?w=360',
            ),
          ],
        ),
      ),
    );
  }
}
