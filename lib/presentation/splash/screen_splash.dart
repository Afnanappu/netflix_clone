import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix/presentation/main_page/screen_main_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    //Wait for the animation to finish.
    _delayForAnimation(context);
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'lib/Animations/netflix_intro_animation.json',
          repeat: false,
          fit: BoxFit.cover,
          renderCache: RenderCache.raster,
          frameRate: FrameRate.composition,
          filterQuality: FilterQuality.none,
        ),
      ),
    );
  }
}

void _delayForAnimation(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 6));
    // ignore: use_build_context_synchronously
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ScreenMainPage(),
      ),
    );
  }