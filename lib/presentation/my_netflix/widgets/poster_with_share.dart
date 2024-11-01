import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/home/widgets/elevated_button_for_home.dart';

class CommonPosterWithShare extends StatelessWidget {
  const CommonPosterWithShare({
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
        border: Border.all(),
        // image: DecorationImage(
        //   image: CachedNetworkImageProvider(
        //     image,
        //   ),
        //   fit: BoxFit.fitWidth,
        // ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: CachedNetworkImage(
              imageUrl: image,
              placeholder: (context, url) =>
                  const Center(child: Text('Loading...')),
              errorWidget: (context, url, error) =>
                  Center(child: Text(error.toString())),
            ),
          ),
          const SizedBox(
            height: 45,
            width: 120,
            child: ElevatedButtonForHome(
              text: 'Share',
              color: MyColors.white,
              icon: Icon(
                Icons.share_outlined,
                color: MyColors.white,
              ),
              bgColor: MyColors.blackHalf,
            ),
            // ElevatedButton.icon(label: Text('Share'),icon: Icon(Icons.share), onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: MyColors.lightGrey,shape: Rectan),)
          )
        ],
      ),
    );
  }
}
