import 'package:flutter/material.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/search/widgets/poster_video_type_tile.dart';

class MovieListViewBundle extends StatelessWidget {
  const MovieListViewBundle({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 20, bottom: 5),
          child: Text(
            title,
            style: MyTextTheme.posterTitleFont,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const PosterVideoTypeTile(
                image:
                    "https://rukminim2.flixcart.com/image/850/1000/kph8h3k0/poster/y/f/z/large-the-adventures-of-tintin-movie-poster-non12x18no1x0151-original-imag3pb3ypquwk3p.jpeg?q=90&crop=false",
                title: 'The Adventures Of Tintin',
              );
            },
          ),
        ),
      ],
    );
  }
}
