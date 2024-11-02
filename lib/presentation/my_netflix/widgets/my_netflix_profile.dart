
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/core/widgets/custom_small_widgets.dart';

class MyNetflixProfile extends StatelessWidget {
  const MyNetflixProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GridTile(
          child: Column(
            children: [
              Container(
                height: 70,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: MyColors.lightBlack),
                  color: MyColors.lightBlack,
                  borderRadius: circleBorder10(),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/logo/profile.jpg',
                    ),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Thing',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 32,
                    weight: 6,
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
