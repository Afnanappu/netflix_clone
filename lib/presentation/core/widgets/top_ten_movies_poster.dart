import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/tmdb.dart';
import 'package:netflix/presentation/core/widgets/custom_small_widgets.dart';
import 'package:stroke_text/stroke_text.dart';

class TopTenMoviePoster extends StatelessWidget {
  const TopTenMoviePoster({
    super.key,
    required this.image,
    required this.index,
  });
  final String image;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomLeft, children: [
      StrokeText(
        text: '$index',
        textStyle: const TextStyle(
          color: MyColors.black,
          fontSize: 120,
        ),
        strokeColor: MyColors.white,
        strokeWidth: 2,
      ),
      Container(
        width: 125,
        margin: const EdgeInsets.only(top: 10, left: 42, bottom: 10, right: 20),
        decoration: BoxDecoration(
          color: MyColors.lightBlack,
          borderRadius: circleBorder10(),
          border: Border.all(),
          image: DecorationImage(
            image: CachedNetworkImageProvider(
              "$base_image_url$image",
            ),
            fit: BoxFit.fitWidth,
          ),
        ),
        // child: ClipRRect(
        //   borderRadius: circleBorder10(),
        //   child: CachedNetworkImage(
        //     imageUrl: image,
        //     placeholder: (context, url) =>
        //         const Center(child: Text('Loading...')),
        //     errorWidget: (context, url, error) =>
        //         Center(child: Text(error.toString())),
        //   ),
        // ),
      ),
    ]);
  }
}
