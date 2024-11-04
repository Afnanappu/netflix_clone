import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/core/widgets/common_poster.dart';

class DownloadPagePoster extends StatelessWidget {
  const DownloadPagePoster({
    super.key,
    required this.image,
  });
  final List<dynamic> image;

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
              child: CommonPoster(
                isBackgroundImage: false,
                image: image[0].posterPath,
              ),
            ),
            Transform.rotate(
              angle: -.3,
              origin: const Offset(0, 200),
              child: CommonPoster(
                isBackgroundImage: false,
                image: image[1].posterPath,
              ),
            ),
            CommonPoster(
              isBackgroundImage: false,
              image: image[2].posterPath,
            ),
          ],
        ),
      ),
    );
  }
}
