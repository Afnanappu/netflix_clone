import 'package:flutter/material.dart';

import 'package:netflix/presentation/search/widgets/movie_list_view_bundle.dart';
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
