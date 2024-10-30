import 'package:flutter/material.dart';
import 'package:netflix/presentation/splash/screen_splash.dart';

void main() {
  runApp(const NetflixApp());
}

class NetflixApp extends StatelessWidget {
  const NetflixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      home: const SplashScreen(),
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
      ),
    );
  }
}
