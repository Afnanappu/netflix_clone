import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/application/search_page/search_movie_provider.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/core/widgets/common_poster.dart';

class MovieGridViewBundle extends ConsumerWidget {
  const MovieGridViewBundle({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(searchMovieProvider);

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
        movies.isNotEmpty
            ? Expanded(
                child: GridView.builder(
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    return CommonPoster(
                      isBackgroundImage: false,
                      image: movies[index].posterPath,
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 120,
                    childAspectRatio: 9 / 20,
                    mainAxisSpacing: 0,
                    mainAxisExtent: 190,
                  ),
                ),
              )
            : const SizedBox(
              height: 300,
              child: Center(
                  child: Text('No result found'),
                ),
            )
      ],
    );
  }
}
