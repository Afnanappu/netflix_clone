import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/core/colors/colors.dart';
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
        textTheme: const TextTheme(
          displaySmall: TextStyle(fontWeight: FontWeight.w500),
        ),
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: MyColors.lightBlack),
          backgroundColor: MyColors.transparent50,
          elevation: 0,

        )
      ),
    );
  }
}
