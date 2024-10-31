import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/application/main_page/bottom_navigation_provider.dart';
import 'package:netflix/presentation/games/screen_games.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/main_page/widgets/bottom_navigation_main.dart';
import 'package:netflix/presentation/my_netflix/screen_my_netflix.dart';
import 'package:netflix/presentation/news_and_hot/screen_news_and_hot.dart';

class ScreenMainPage extends ConsumerWidget {
  const ScreenMainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(bottomNavigationPageControllerProvider);
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          ref.read(bottomNavigationProvider.notifier).updateIndex(value);
        },
        children: const [
          ScreenHome(),
          ScreenGames(),
          ScreenNewsAndHot(),
          ScreenMyNetflix(),
        ],
      ),
      bottomNavigationBar: BottomNavigationMain(
        pageController: pageController,
      ),
    );
  }
}
