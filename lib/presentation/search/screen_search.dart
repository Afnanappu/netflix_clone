import 'package:flutter/material.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/new_and_hot/widgets/custom_cache_network_image.dart';
import 'package:netflix/presentation/search/widgets/search_bar.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: SearchBarForSearchScreen(),
          ),
          body: MovieListViewBundle(
            title: 'Recommended TV Shows & Movies',
          )),
    );
  }
}

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
    return SizedBox(
      height: 95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 120,
            child: CustomNetworkImage(
              image: image,
              fit: BoxFit.fitWidth,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: MyTextTheme.lightSmallWhiteFont,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_circle_outline_rounded,
                  size: 38,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
