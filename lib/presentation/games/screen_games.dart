import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/application/game_page/game_provider.dart';
import 'package:netflix/presentation/games/widgets/common_gaming_poster_bundle.dart';
import 'package:netflix/presentation/my_netflix/widgets/my_netflix_app_bar.dart';
import 'package:netflix/presentation/search/screen_search.dart';

class ScreenGames extends ConsumerWidget {
  const ScreenGames({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final games = ref.watch(gameProvider);
    return Scaffold(
        appBar:  MyNetflixAppBar(
          title: 'Games',
          firstIcon: Icons.search,
          firstOnPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const ScreenSearch(),
          )),
        ),
        body: RefreshIndicator.adaptive(
          onRefresh: () async{
             ref.read(gameProvider.notifier).fetchData();
          },
          child: ListView(
            children:  [
              // Stack(
          
              //   children: [
              //     Column(
              //       children: [
              //         CustomNetworkImage(image: '')
              //       ],
              //     ),
              //     CustomNetworkImage(
              //       image:
              //           "https://images-cdn.ubuy.co.in/6340060e7369363c3b397998-god-of-war-gaming-poster-size.jpg",
              //       fit: BoxFit.fitWidth,
              //     ),
              //   ],
              // ),
              CommonGamePosterBundle(
                game: games.sublist(0,10),
                 title: 'Sci-Fi Games',
              ),
              CommonGamePosterBundle(
                game: games.sublist(10,20),
                 title: 'Arcade Games',
              ),
              CommonGamePosterBundle(
                game: games.sublist(20,30),
                 title: 'Physics-Based',
              ),
              CommonGamePosterBundle(
                game: games.sublist(30,40),
                 title: 'Strategic Game',
              ),
            ],
          ),
        ));
  }
}
