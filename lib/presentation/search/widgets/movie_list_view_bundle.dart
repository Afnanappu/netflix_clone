import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/application/home_page/popular_movie_provider.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/search/widgets/poster_video_type_tile.dart';

class MovieListViewBundle extends ConsumerWidget {
  const MovieListViewBundle({
    super.key,
    required this.title,
    
  });
  final String title;


  @override
  Widget build(BuildContext context, WidgetRef ref) {
      final  movies = ref.watch(popularMovieProvider);
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
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return  PosterVideoTypeTile(
                image: movies[index].posterPath,
                title: movies[index].title,
              );
            },
          ),
        ),
      ],
    );
  }
}
