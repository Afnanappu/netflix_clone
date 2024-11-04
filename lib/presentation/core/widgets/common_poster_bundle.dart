import 'package:flutter/material.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/core/widgets/common_poster.dart';

class CommonPosterBundle extends StatelessWidget {
  const CommonPosterBundle({
    super.key,
    required this.title,
    // required this.list;
    required this.imageList,
  });
  final String title;

  //makee this dynamic because of the conflict between Result classes.
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
          height: 200,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount:  imageList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CommonPoster(
                image: imageList[index].posterPath,
              );
            },
          ),
        )
      ],
    );
  }
}
