import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/core/tmdb.dart';
import 'package:netflix/presentation/new_and_hot/widgets/custom_cache_network_image.dart';


class NewAndHotPoster extends StatelessWidget {
  const NewAndHotPoster({super.key, required this.movie});
  final dynamic movie;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           Text(
            DateFormat('MMM d').format(movie.releaseDate),
            style: MyTextTheme.posterTitleFont,
          ),
          SizedBox(
            width: 270,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                 CustomNetworkImage(
                    image:
                        "$base_image_url${movie.posterPath}"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Expanded(
                       child: Text(
                        movie.title,
                        style: MyTextTheme.titleFont,
                                           ),
                     ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,))
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications_outlined),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.info_outline),
                        ),
                      ],
                    )
                  ],
                ),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Coming on ${DateFormat('d MMM').format(movie.releaseDate)}',
                      style: MyTextTheme.lightSmallSmallGreyFont,
                    ),
                    Text(
                      movie.overview,
                      style: MyTextTheme.lightSmallGreyFont,
                      maxLines: 3,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
