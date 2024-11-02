
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/core/widgets/custom_small_widgets.dart';

class CommonGamePoster extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const CommonGamePoster({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 110,
          width: 100,
          margin: const EdgeInsets.only(
            right: 10,
          ),
          decoration: BoxDecoration(
              color: MyColors.blackHalf,
              borderRadius: circleBorder10(),
              image: DecorationImage(
                  image: CachedNetworkImageProvider(image), fit: BoxFit.cover)),
        ),
        Text(
          title,
          style: MyTextTheme.lightSmallWhiteFont,
        ),
        Text(
          subtitle,
          style: MyTextTheme.lightSmallSmallWhiteFont,
        ),
      ],
    );
  }
}
