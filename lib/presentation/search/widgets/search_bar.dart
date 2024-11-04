import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/application/search_page/search_movie_provider.dart';
import 'package:netflix/application/search_page/search_ui_provider.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/core/widgets/custom_small_widgets.dart';

class SearchBarForSearchScreen extends ConsumerWidget {
  SearchBarForSearchScreen({
    super.key,
  });
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 3),
          child: SearchBar(
            onTapOutside: (_) => FocusScope.of(context).unfocus(),
            onTap: () {
              ref.read(searchUiProvider.notifier).state = true;
              log('search set to true');
            },
            controller: searchController,
            onChanged: (value) {
              ref.read(searchMovieProvider.notifier).searchMovie(value);
              if (value.isEmpty) {
                ref.read(searchUiProvider.notifier).state = false;
                log('search set to false');
              } else {
                ref.read(searchUiProvider.notifier).state = true;
                log('search set to true');
              }
            },
            trailing: [
              if (searchController.text.isNotEmpty)
                IconButton(
                    onPressed: () {
                      searchController.text = '';
                      ref.read(searchUiProvider.notifier).state = false;
                      log('search field is cleared');
                    },
                    icon: const Icon(Icons.close_rounded))
            ],
            hintStyle: const WidgetStatePropertyAll(
                TextStyle(color: MyColors.lightGrey, fontSize: 13)),
            shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: circleBorder10())),
            constraints: const BoxConstraints(maxWidth: 290, minHeight: 50),
            hintText: 'Search shows, movies...',
            backgroundColor: const WidgetStatePropertyAll(MyColors.blackHalf),
            leading: const Icon(
              Icons.search,
              color: MyColors.lightGrey,
            ),
          ),
        ),
      ],
    );
  }
}
