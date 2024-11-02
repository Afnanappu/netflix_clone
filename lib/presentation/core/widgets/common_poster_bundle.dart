import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/application/home_page/home_page_Providers.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/core/widgets/common_poster.dart';

class CommonPosterBundle extends ConsumerWidget {
  const CommonPosterBundle({
    super.key,
    required this.title,
    // required this.list;
    required this.image,
  });
  final String title;
  final String image;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(nowPlayingMovieProvider);
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
            itemCount: result.length > 10 ? 10 : result.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CommonPoster(
                image: result[index].posterPath,
              );
            },
          ),
        )
      ],
    );
  }
}
