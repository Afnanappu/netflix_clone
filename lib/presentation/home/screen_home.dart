import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widgets/home_main_poster.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const HomeMainPoster(),
      ],
    ));
  }
}
