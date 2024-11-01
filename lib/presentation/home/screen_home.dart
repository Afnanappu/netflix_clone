import 'package:flutter/material.dart';
import 'package:netflix/presentation/core/widgets/common_poster_bundle.dart';
import 'package:netflix/presentation/core/widgets/top_ten_poster_bundle.dart';
import 'package:netflix/presentation/home/widgets/home_main_poster.dart';
import 'package:netflix/presentation/my_netflix/widgets/my_netflix_app_bar.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: MyNetflixAppBar(
          leading: Image.asset('assets/logo/Netflix_logo.png'),
          firstIcon: Icons.download_sharp,
          secondIcon: Icons.search,
        ),
        body: ListView(
          children: const [
            //main poster
            HomeMainPoster(
              image: 'https://m.media-amazon.com/images/I/7197L2XzWxL.jpg',
            ),

            //poster bundles
            CommonPosterBundle(
              title: 'Heartfelt Movies',
              image: "https://m.media-amazon.com/images/I/A1jNECCCyUL.jpg",
            ),
            CommonPosterBundle(
              title: "We Think You'll Love This",
              image:
                  'https://img.freepik.com/premium-photo/movie-poster-design_841014-8784.jpg?w=360',
            ),

            //top ten movie bundle
            TopTenPosterBundle(
              title: 'Top 10 Movies in India Today',
              image:
                  'https://rukminim2.flixcart.com/image/850/1000/k0y6cnk0/poster/9/f/6/medium-peaky-blinders-tv-series-poster-for-room-office-13-inch-x-original-imafkm3uhgwyy3gn.jpeg?q=90&crop=false',
            ),

            CommonPosterBundle(
              title: 'Crowd Pleasure',
              image:
                  'https://www.universalpictures.com.au/tl_files/content/movies/wild_robot/posters/01.jpg',
            ),
          ],
        ));
  }
}
