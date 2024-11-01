import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/core/widgets/common_poster.dart';
import 'package:netflix/presentation/my_netflix/widgets/my_netflix_app_bar.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyNetflixAppBar(
        firstIcon: Icons.search,
        secondIcon: Icons.menu_outlined,
        title: 'Downloads',
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Turn on Downloads for You',
              style: MyTextTheme.titleFont,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'We will download movies and show just for you, so you will have always something to watch.',
              style: MyTextTheme.lightSmallGreyFont,
            ),
            const SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundColor: MyColors.blackHalf,
              radius: 100,
              child: Stack(
                children: [
                  CommonPoster(
                    image:
                        'https://img.freepik.com/premium-photo/movie-poster-design-template_841014-30766.jpg?w=360',
                  ),
                  Transform(
                    transform: Matrix4.rotationZ(.61),
                    child: CommonPoster(
                      image:
                          'https://img.freepik.com/premium-photo/movie-poster-design-template_841014-30766.jpg?w=360',
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
