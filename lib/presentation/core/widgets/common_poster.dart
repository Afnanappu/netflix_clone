import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/themes.dart';

class CommonPoster extends StatelessWidget {
  const CommonPoster({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
      decoration: BoxDecoration(
        color: MyColors.lightBlack,
        borderRadius: circleBorder10(),
        
        image: DecorationImage(
          image: CachedNetworkImageProvider(
            image,
          ),
          fit: BoxFit.fitWidth,
        ),
      ),
      // child: ClipRRect(
      //   borderRadius: circleBorder10(),
      //   child: CachedNetworkImage(
      //     imageUrl: image,
      //     placeholder: (context, url) => const Center(child:  Text('Loading...')),
      //     errorWidget: (context, url, error) => Center(child: Text(error.toString())),
      //   ),
      // ),
    );
  }
}
