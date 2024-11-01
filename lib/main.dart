import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/main_page/screen_main_page.dart';

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
      home: const ScreenMainPage(),
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        fontFamily: 'Netflix_Sans',
        textTheme: const TextTheme(
          displaySmall: TextStyle(fontWeight: FontWeight.w500),
        ),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: MyColors.white,),
          titleTextStyle: TextStyle(
              color: MyColors.white,
              fontFamily: 'Netflix_Sans',
              fontSize: 23,
              fontWeight: FontWeight.w600),
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: MyColors.lightBlack),
          backgroundColor: MyColors.transparent50,
          elevation: 0,
        ),
      ),
    );
  }
}
