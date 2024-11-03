import 'package:flutter/material.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/infrastructure/top_rated/model/top_rated_movie_model.dart';
import 'package:netflix/presentation/core/widgets/top_ten_movies_poster.dart';

class TopTenPosterBundle extends StatelessWidget {
  const TopTenPosterBundle({
    super.key,
    required this.title,
    // required this.list;
    required this.imageList,
  });
  final String title;
  final List<Result> imageList;
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
            itemCount: imageList.length > 10 ? 10 : imageList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return TopTenMoviePoster(
                  image: imageList[index].posterPath, index: index + 1);
            },
          ),
        )
      ],
    );
  }
}
