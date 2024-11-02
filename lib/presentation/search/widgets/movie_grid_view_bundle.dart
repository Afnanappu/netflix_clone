import 'package:flutter/material.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/core/widgets/common_poster.dart';

class MovieGridViewBundle extends StatelessWidget {
  const MovieGridViewBundle({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10, top: 20, bottom: 5),
          child: Text(
            'Top Results',
            style: MyTextTheme.posterTitleFont,
          ),
        ),
        Expanded(
          child: GridView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CommonPoster(
                isBackgroundImage: false,
                image: image,
              );
            },
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 120,
              childAspectRatio: 9 / 20,
              mainAxisSpacing: 0,
              mainAxisExtent: 190,
            ),
          ),
        ),
      ],
    );
  }
}
