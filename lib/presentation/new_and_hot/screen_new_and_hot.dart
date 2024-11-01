import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/my_netflix/widgets/my_netflix_app_bar.dart';
import 'package:netflix/presentation/new_and_hot/widgets/new_and_hot_poster.dart';

class ScreenNewsAndHot extends StatelessWidget {
  const ScreenNewsAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: const MyNetflixAppBar(
          title: 'New & Hot',
          firstIcon: Icons.file_download,
          secondIcon: Icons.search,
        ),
        body: Column(
          children: [
            TabBar(
              automaticIndicatorColorAdjustment: true,
              indicatorSize: TabBarIndicatorSize.tab,
              splashBorderRadius: BorderRadius.circular(25),
              tabAlignment: TabAlignment.start,
              indicatorWeight: 0,
              labelColor: MyColors.black,
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
                    '🍿 Coming Soon',
                  ),
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    children: const [
                      NewsAndHotPoster(),
                      NewsAndHotPoster(),
                      NewsAndHotPoster()
                    ],
                  ),
                  ListView(
                    children: const [
                      NewsAndHotPoster(),
                      NewsAndHotPoster(),
                      NewsAndHotPoster()
                    ],
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
