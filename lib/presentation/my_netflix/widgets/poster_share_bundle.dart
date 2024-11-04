import 'package:flutter/material.dart';
import 'package:netflix/core/themes.dart';


import 'package:netflix/presentation/my_netflix/widgets/poster_with_share.dart';

class CommonPosterShareBundle extends StatelessWidget {
  const CommonPosterShareBundle({
    super.key,
    required this.title,
    required this.imageList,
  });
  final String title;
  final List<dynamic> imageList;
  @override
  Widget build(BuildContext context) {
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
          height: 235,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: imageList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CommonPosterWithShare(
                image: imageList[index].posterPath,
              );
            },
          ),
        )
      ],
    );
  }
}

