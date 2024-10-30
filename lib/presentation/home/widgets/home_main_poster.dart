
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/home/widgets/elevated_button_for_home.dart';

class HomeMainPoster extends StatelessWidget {
  const HomeMainPoster({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment:const Alignment(0, 0.8),
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: MyColors.lightBlack,
              borderRadius: circleBorder10(),
              border: Border.all(color: MyColors.lightGrey)),
          child: ClipRRect(
            borderRadius: circleBorder10(),
            child: Image.asset(
              'assets/movie_posters/GRAY WALL.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
       const Positioned(
          left: 60,
          child: Row(
            children: [
              ElevatedButtonForHome(
                text: 'Play',
                icon: Icon(
                  Icons.play_arrow,
                  color: MyColors.black,
                ),
                bgColor: MyColors.white,
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButtonForHome(
                text: 'My List',
                icon: Icon(
                  Icons.add,
                  color: MyColors.white,
                ),
                bgColor: MyColors.transparent30,
                color: MyColors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
