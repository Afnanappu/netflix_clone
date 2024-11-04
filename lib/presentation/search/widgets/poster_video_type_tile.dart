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
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: SizedBox(
        height: 95,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 120,
              child: CustomNetworkImage(
                image: image,
                fit: BoxFit.fitWidth,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  title,
                  style: MyTextTheme.lightSmallWhiteFont,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
