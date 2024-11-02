import 'package:flutter/material.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/new_and_hot/widgets/custom_cache_network_image.dart';

class PosterVideoTypeTile extends StatelessWidget {
  const PosterVideoTypeTile({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 120,
            child: CustomNetworkImage(
              image: image,
              fit: BoxFit.fitWidth,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: MyTextTheme.lightSmallWhiteFont,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_circle_outline_rounded,
                  size: 38,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
