import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/core/widgets/custom_small_widgets.dart';
import 'package:netflix/presentation/home/widgets/elevated_button_for_home.dart';

class HomeMainPoster extends StatelessWidget {
  const HomeMainPoster({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 0.8),
      children: [
        Container(
          height: 430,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: MyColors.lightBlack,
            borderRadius: circleBorder10(),
            border: Border.all(color: MyColors.lightGrey),
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                image,
              ),
              fit: BoxFit.fitWidth,
            ),
          ),
          //   child: ClipRRect(
          //     borderRadius: circleBorder10(),
          //     child: CachedNetworkImage(
          //   imageUrl: image,
          //   placeholder: (context, url) => const Center(child:  Text('Loading...')),
          //   errorWidget: (context, url, error) => Center(child: Text(error.toString())),
          // ),
          //   ),
        ),
        const Positioned(
          left: 60,
          child: Row(
            children: [
              ElevatedButtonForHome(
                text: 'Play',
                icon: Icon(
                  Icons.play_arrow,
                  color: MyColors.black,
                ),
                bgColor: MyColors.white,
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButtonForHome(
                text: 'My List',
                icon: Icon(
                  Icons.add,
                  color: MyColors.white,
                ),
                bgColor: MyColors.transparent30,
                color: MyColors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
