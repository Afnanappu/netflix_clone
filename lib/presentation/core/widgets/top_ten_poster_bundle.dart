import 'package:flutter/material.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/core/widgets/common_poster.dart';
import 'package:netflix/presentation/core/widgets/top_ten_movies_poster.dart';

class TopTenPosterBundle extends StatelessWidget {
  const TopTenPosterBundle({
    super.key,
    required this.title,
    // required this.list;
    required this.image,
  });
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              title,
              style: MyTextTheme.posterTitleFont,
            )),
        SizedBox(
          height: 200,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return TopTenMoviePoster(image: image, index: index+1);
            },
          ),
        )
      ],
    );
  }
}
