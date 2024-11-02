import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/core/widgets/custom_small_widgets.dart';

class SearchBarForSearchScreen extends StatelessWidget {
  const SearchBarForSearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 3),
          child: SearchBar(
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
