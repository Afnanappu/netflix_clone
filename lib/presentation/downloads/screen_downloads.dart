import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/core/widgets/custom_sized_box.dart';
import 'package:netflix/presentation/downloads/widgets/button_for_download_page.dart';
import 'package:netflix/presentation/downloads/widgets/download_page_poster.dart';
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
            ListTile(
              leading: const Icon(Icons.settings),
              title: Text(
                'Smart Downloads',
                style: MyTextTheme.buttonThickFontFun(
                  color: MyColors.white,
                  size: 15,
                  weight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
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
            const DownloadPagePoster(),
            const SizedBox10(
              height: 20,
            ),
            const ButtonForDownloadPage(
              padding: 12,
              bgColor: Colors.blue,
              text: 'Set Up',
            ),
            const ButtonForDownloadPage(
              padding: 50,
              bgColor: MyColors.blackHalf,
              text: 'Find More to Download',
            ),
          ],
        ),
      ),
    );
  }
}
