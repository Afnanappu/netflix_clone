import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/application/home_page/now_playing_movie_provider.dart';
import 'package:netflix/application/home_page/top_rated_movie_provider.dart';
import 'package:netflix/application/home_page/upcoming_movie_provider.dart';
import 'package:netflix/presentation/core/widgets/custom_small_widgets.dart';
import 'package:netflix/presentation/downloads/screen_downloads.dart';
import 'package:netflix/presentation/my_netflix/widgets/my_netflix_app_bar.dart';
import 'package:netflix/presentation/my_netflix/widgets/my_netflix_profile.dart';
import 'package:netflix/presentation/my_netflix/widgets/navigation_tile.dart';
import 'package:netflix/presentation/my_netflix/widgets/poster_share_bundle.dart';
import 'package:netflix/presentation/search/screen_search.dart';

class ScreenMyNetflix extends ConsumerWidget {
  const ScreenMyNetflix({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nowPlayingMovie = ref.watch(nowPlayingMovieProvider);
    final upcomingMovie = ref.watch(upcomingMovieProvider);
    final topRatedMovie = ref.watch(topRatedMovieProvider);
    return Scaffold(
      appBar: MyNetflixAppBar(
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
              MaterialPageRoute(
                builder: (context) =>  ScreenDownloads(imageList: topRatedMovie,),
              ),
            ),
          ),
          const SizedBox10(
            height: 30,
          ),
          CommonPosterShareBundle(
            title: 'TV Shows & Movie You Liked',
            imageList: topRatedMovie,
          ),
          const SizedBox10(),
          if(upcomingMovie.isNotEmpty)CommonPosterShareBundle(
            title: 'My List',
            imageList: upcomingMovie,
          )
        ],
      ),
    );
  }
}
