import 'package:flutter/material.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/new_and_hot/widgets/custom_cache_network_image.dart';

class NewsAndHotPoster extends StatelessWidget {
  const NewsAndHotPoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'Nov\n15',
            style: MyTextTheme.posterTitleFont,
          ),
          SizedBox(
            width: 270,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CustomNetworkImage(
                    image:
                        'https://themarketingbirds.com/wp-content/uploads/2021/04/nysm2-official-quad-scaled.jpg'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Ready Or Not',
                      style: MyTextTheme.titleFont,
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
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Coming on 12 Sep',
                      style: MyTextTheme.lightSmallSmallGreyFont,
                    ),
                    Text(
                      'After a shipwreck, an intelligent robot called Roz is stranded on an uninhabited island. To survive the harsh environment',
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
