import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/tmdb.dart';
import 'package:netflix/presentation/core/widgets/custom_small_widgets.dart';

class CommonPoster extends StatelessWidget {
  const CommonPoster({
    super.key,
    required this.image,
    this.isBackgroundImage = true,
  });
  final String? image;
  final bool isBackgroundImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
      decoration: BoxDecoration(
        color: MyColors.lightBlack,
        borderRadius: circleBorder10(),
        image: (isBackgroundImage == false)
            ? null
            : DecorationImage(
                image: CachedNetworkImageProvider(
                  "$base_image_url$image",
                ),
                fit: BoxFit.fitWidth,
              ),
      ),
      child: (isBackgroundImage == true || image == null)
          ? null
          : ClipRRect(
              borderRadius: circleBorder10(),
              child: CachedNetworkImage(
                imageUrl: "$base_image_url$image",
                placeholder: (context, url) =>
                    const Center(child: Text('Loading...')),
                errorWidget: (context, url, error) =>
                    const Center(child: Text("Image can't be loaded")),
              ),
            ),
    );
  }
}
