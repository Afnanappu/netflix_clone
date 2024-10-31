import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/presentation/splash/screen_splash.dart';

void main() {
  runApp(const ProviderScope(child: NetflixApp()));
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
        fontFamily: 'Netflix_Sans',
  textTheme: TextTheme(displaySmall: const TextStyle(fontWeight: FontWeight.w500)),
      ),
    );
  }
}
