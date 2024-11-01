import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/my_netflix/widgets/my_netflix_app_bar.dart';

class ScreenNewsAndHot extends StatelessWidget {
  const ScreenNewsAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyNetflixAppBar(
        title: 'News & Hot',
        firstIcon: Icons.file_download,
        secondIcon: Icons.search,
      ),
      body: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: TabBar(
            dividerColor: Colors.black,
            automaticIndicatorColorAdjustment: false,
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(
                color: MyColors.transparent,
              ),
            ),
            tabs: [
              Tab(
                  child: ElevatedButton.icon(
                onPressed: () {},
                label: const Text(
                  'Coming Soon',
                  style: TextStyle(
                    color: MyColors.black,
                    fontFamily: "Netflix_Sans",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                icon: const Icon(Icons.fastfood_outlined),
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.white,
                ),
              )),
              Tab(
                  child: ElevatedButton.icon(
                onPressed: () {},
                label: const Text(
                  'Coming Soon',
                  style: TextStyle(
                    color: MyColors.black,
                    fontFamily: "Netflix_Sans",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                icon: const Icon(Icons.fastfood_outlined),
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.white,
                ),
              )),
              // Tab(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Icon(Icons.abc),
              //       Text('data'),
              //     ],
              //   ),
              // ),
            ]),
      ),
    );
  }
}
