import 'package:flutter/material.dart';
import 'package:netflix/presentation/games/widgets/common_gaming_poster_bundle.dart';
import 'package:netflix/presentation/my_netflix/widgets/my_netflix_app_bar.dart';

class ScreenGames extends StatelessWidget {
  const ScreenGames({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyNetflixAppBar(
          title: 'Games',
          firstIcon: Icons.search,
        ),
        body: ListView(
          children: const [
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
              image:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR32WViFZ03BaKtHi1bdGcOs_O5CO2jjLlT1A&s',
              title: 'Sci-Fi Games',
            ),
            CommonGamePosterBundle(
              image:
                  'https://play-lh.googleusercontent.com/CaHq5fR-RHQwutR1wr78LywKMUbvFzf1uN7vHeZTrIbinUiq7MNhfsuUW2BfJy68',
              title: 'Arcade Games',
            ),
            CommonGamePosterBundle(
              image:
                  'https://is5-ssl.mzstatic.com/image/thumb/Purple126/v4/b3/f8/78/b3f8781b-6283-d30c-d1d2-cd44a283e33e/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/460x0w.webp',
              title: 'Physics-Based',
            ),
          ],
        ));
  }
}
