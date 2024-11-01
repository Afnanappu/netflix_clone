import 'package:flutter/material.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/my_netflix/widgets/my_netflix_app_bar.dart';
import 'package:netflix/presentation/my_netflix/widgets/my_netflix_profile.dart';
import 'package:netflix/presentation/my_netflix/widgets/navigation_tile.dart';
import 'package:netflix/presentation/my_netflix/widgets/poster_share_bundle.dart';

class ScreenMyNetflix extends StatelessWidget {
  const ScreenMyNetflix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyNetflixAppBar(
        title: 'My Netflix',
        firstIcon: Icons.search,
        secondIcon: Icons.menu_rounded,
      ),
      body: ListView(
        children: const [
          SizedBox10(height: 50),

          //profile
          MyNetflixProfile(),
          SizedBox10(height: 50),
          //Notification
          NavigationTileMyNetflixPage(
            text: 'Notifications',
            icon: Icons.notifications,
            icColor: Colors.red,
          ),
          SizedBox10(),
          //Downloads
          NavigationTileMyNetflixPage(
            text: 'Downloads',
            icon: Icons.file_download,
            icColor: Colors.blue,
          ),
          SizedBox10(
            height: 30,
          ),
          CommonPosterShareBundle(
            title: 'TV Shows & Movie You Liked',
            image:
                'https://mir-s3-cdn-cf.behance.net/project_modules/1400/1fde52184551123.6553f66dbce60.jpg',
          ),
          SizedBox10(),
          CommonPosterShareBundle(
            title: 'My List',
            image:
                'https://i.ebayimg.com/images/g/z68AAOSw5A1iSlxm/s-l1200.webp',
          )
        ],
      ),
    );
  }
}
