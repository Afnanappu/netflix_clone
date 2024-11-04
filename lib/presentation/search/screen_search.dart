import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/application/search_page/search_ui_provider.dart';
import 'package:netflix/presentation/search/widgets/movie_grid_view_bundle.dart';
import 'package:netflix/presentation/search/widgets/movie_list_view_bundle.dart';
import 'package:netflix/presentation/search/widgets/search_bar.dart';

class ScreenSearch extends ConsumerWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isListUi = ref.watch(searchUiProvider);
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: SearchBarForSearchScreen(),
        ),
        body: isListUi != true
            ? const MovieListViewBundle(
                title: 'Recommended TV Shows & Movies',
              )
            : const MovieGridViewBundle(),
      ),
    );
  }
}
