import 'package:flutter/material.dart';
import 'package:netflix/presentation/core/widgets/common_poster.dart';

class CommonPosterBundle extends StatelessWidget {
  const CommonPosterBundle({
    super.key,
    required this.title,
    // required this.list;
    required this.image,
  });
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(title)),
        SizedBox(
          height: 200,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return  CommonPoster(image: image,);
            },
          ),
        )
      ],
    );
  }
}
