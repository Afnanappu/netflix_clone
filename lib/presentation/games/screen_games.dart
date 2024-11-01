import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/my_netflix/widgets/my_netflix_app_bar.dart';
import 'package:netflix/presentation/new_and_hot/widgets/custom_cache_network_image.dart';

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
          children: [
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
            SizedBox(
              height: 130,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Sci-Fi Games'),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 100,
                              margin: EdgeInsets.only(
                                left: 5,
                                right: 5,
                              ),
                              decoration: BoxDecoration(
                                  color: MyColors.blackHalf,
                                  borderRadius: circleBorder10(),
                                  image: const DecorationImage(
                                      image: CachedNetworkImageProvider(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR32WViFZ03BaKtHi1bdGcOs_O5CO2jjLlT1A&s'),
                                      fit: BoxFit.cover)),
                            ),
                            const Text('Temple Run',style: MyTextTheme.lightSmallGreyFont,),
                            const Text('Adventure', style: MyTextTheme.lightSmallSmallGreyFont,),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
