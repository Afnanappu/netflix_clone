import 'package:flutter/material.dart';
import 'package:netflix/presentation/core/widgets/custom_small_widgets.dart';
import 'package:netflix/presentation/downloads/screen_downloads.dart';
import 'package:netflix/presentation/my_netflix/widgets/my_netflix_app_bar.dart';
import 'package:netflix/presentation/my_netflix/widgets/my_netflix_profile.dart';
import 'package:netflix/presentation/my_netflix/widgets/navigation_tile.dart';
import 'package:netflix/presentation/my_netflix/widgets/poster_share_bundle.dart';
import 'package:netflix/presentation/search/screen_search.dart';

class ScreenMyNetflix extends StatelessWidget {
  const ScreenMyNetflix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  MyNetflixAppBar(
        title: 'My Netflix',
        firstIcon: Icons.search,
        firstOnPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const ScreenSearch(),
          )),
        secondIcon: Icons.menu_rounded,
      ),
      body: ListView(
        children: [
          const SizedBox10(height: 50),

          //profile
          const MyNetflixProfile(),
          const SizedBox10(height: 50),
          //Notification
          const NavigationTileMyNetflixPage(
            text: 'Notifications',
            icon: Icons.notifications,
            icColor: Colors.red,
          ),
          const SizedBox10(),
          //Downloads
          NavigationTileMyNetflixPage(
            text: 'Downloads',
            icon: Icons.file_download,
            icColor: Colors.blue,
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const ScreenDownloads(),),
            ),
          ),
          const SizedBox10(
            height: 30,
          ),
          const CommonPosterShareBundle(
            title: 'TV Shows & Movie You Liked',
            image:
                'https://mir-s3-cdn-cf.behance.net/project_modules/1400/1fde52184551123.6553f66dbce60.jpg',
          ),
          const SizedBox10(),
          const CommonPosterShareBundle(
            title: 'My List',
            image:
                'https://i.ebayimg.com/images/g/z68AAOSw5A1iSlxm/s-l1200.webp',
          )
        ],
      ),
    );
  }
}
