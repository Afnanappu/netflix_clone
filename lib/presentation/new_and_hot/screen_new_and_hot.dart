import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/application/home_page/top_rated_movie_provider.dart';
import 'package:netflix/application/home_page/upcoming_movie_provider.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/my_netflix/widgets/my_netflix_app_bar.dart';
import 'package:netflix/presentation/new_and_hot/widgets/new_and_hot_poster.dart';
import 'package:netflix/presentation/search/screen_search.dart';

class ScreenNewAndHot extends ConsumerWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topRatedMovie = ref.watch(topRatedMovieProvider);
    final upcomingMovies = ref.watch(upcomingMovieProvider);
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: MyNetflixAppBar(
          title: 'New & Hot',
          firstIcon: Icons.file_download,
          secondIcon: Icons.search,
          firstOnPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const ScreenSearch(),
          )),
        ),
        body: Column(
          children: [
            TabBar(
              automaticIndicatorColorAdjustment: true,
              indicatorSize: TabBarIndicatorSize.tab,
              splashBorderRadius: BorderRadius.circular(25),
              tabAlignment: TabAlignment.start,
              indicatorWeight: 0,
              labelColor: const Color.fromRGBO(0, 0, 0, 1),
              labelStyle: const TextStyle(
                fontFamily: "Netflix_Sans",
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelColor: MyColors.white,
              indicatorColor: MyColors.white,
              isScrollable: true,
              indicator: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              dividerHeight: 0,
              tabs: const [
                Tab(
                  child: Text(
                    '🍿 Coming Soon',
                  ),
                ),
                Tab(
                  child: Text(
                    '🍿 Everyones Watching',
                  ),
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.builder(
                    itemCount: topRatedMovie.length,
                    itemBuilder: (context, index) {
                      return NewAndHotPoster(movie: topRatedMovie[index]);
                    },
                  ),
                  ListView.builder(
                    itemCount: upcomingMovies.length,
                    itemBuilder: (BuildContext context, int index) {
                      return NewAndHotPoster(movie: upcomingMovies[index]);
                    },
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
