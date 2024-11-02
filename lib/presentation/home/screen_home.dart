import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/application/home_page/now_playing_movie_provider.dart';
import 'package:netflix/application/home_page/popular_movie_provider.dart';
import 'package:netflix/presentation/core/widgets/common_poster_bundle.dart';
import 'package:netflix/presentation/core/widgets/top_ten_poster_bundle.dart';
import 'package:netflix/presentation/downloads/screen_downloads.dart';
import 'package:netflix/presentation/home/widgets/home_main_poster.dart';
import 'package:netflix/presentation/my_netflix/widgets/my_netflix_app_bar.dart';
import 'package:netflix/presentation/search/screen_search.dart';

class ScreenHome extends ConsumerWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nowPlaying = ref.watch(nowPlayingMovieProvider);
    final popularMovie = ref.watch(popularMovieProvider);
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: MyNetflixAppBar(
          leading: Image.asset('assets/logo/Netflix_logo.png'),
          firstIcon: Icons.download_sharp,
          firstOnPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const ScreenDownloads(),
          )),
          secondIcon: Icons.search,
          secondOnPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const ScreenSearch(),
          )),
        ),
        body: ListView(
          children: [
            //main poster
            HomeMainPoster(
              image: 'https://m.media-amazon.com/images/I/7197L2XzWxL.jpg',
            ),

            //poster bundles
            CommonPosterBundle(
              title: 'Popular Movies',
              imageList: popularMovie,
            ),
            CommonPosterBundle(
              title: "Now Playing",
              imageList: nowPlaying,
            ),

            //top ten movie bundle
            TopTenPosterBundle(
              title: 'Top 10 Movies in India Today',
              image:
                  'https://rukminim2.flixcart.com/image/850/1000/k0y6cnk0/poster/9/f/6/medium-peaky-blinders-tv-series-poster-for-room-office-13-inch-x-original-imafkm3uhgwyy3gn.jpeg?q=90&crop=false',
            ),

            CommonPosterBundle(
              title: 'Crowd Pleasure',
              imageList: nowPlaying,
            ),
          ],
        ));
  }
}
