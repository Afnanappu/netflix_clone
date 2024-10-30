import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/games/screen_games.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/my_netflix/screen_my_netflix.dart';
import 'package:netflix/presentation/news_and_hot/screen_news_and_hot.dart';

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          ScreenHome(),
          ScreenGames(),
          ScreenNewsAndHot(),
          ScreenMyNetflix(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.gamepad_outlined), label: 'Games'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined), label: 'News & Hot'),
          BottomNavigationBarItem(
              icon: Icon(Icons.handshake_outlined), label: 'My Netflix'),
        ],
        onTap: (value) {
          
        },
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
       showUnselectedLabels: true,
       selectedItemColor: MyColors.white,
       backgroundColor: MyColors.black,
       showSelectedLabels: true,
       unselectedItemColor: MyColors.lightGrey,




      ),
    );
  }
}
