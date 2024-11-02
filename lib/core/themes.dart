import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class MyTextTheme {
  static const lightGreyFont = TextStyle(
    color: MyColors.lightGrey,
    fontSize: 18,
    fontFamily: "Netflix_Sans",
  );
  static const lightSmallWhiteFont = TextStyle(
    color: MyColors.white,
    fontSize: 14,
    overflow: TextOverflow.ellipsis,
    fontFamily: "Netflix_Sans",
  );
  static const lightSmallGreyFont = TextStyle(
    color: MyColors.lightGrey,
    fontSize: 16,
    // overflow: TextOverflow.ellipsis,
    fontFamily: "Netflix_Sans",
  );
  static const lightSmallSmallWhiteFont = TextStyle(
    color: MyColors.lightGrey,
    fontSize: 12,
    overflow: TextOverflow.ellipsis,
  );
  static const lightSmallSmallGreyFont = TextStyle(
    color: MyColors.lightGrey,
    fontSize: 14,
    overflow: TextOverflow.ellipsis,
    fontFamily: "Netflix_Sans",
  );

  static TextStyle buttonThickFontFun(
          {Color color = MyColors.black,
          double size = 17,
          FontWeight weight = FontWeight.bold}) =>
      TextStyle(color: color, fontWeight: weight, fontSize: size);

  static const posterTitleFont = TextStyle(
    fontFamily: "Netflix_Sans",
    fontWeight: FontWeight.w700,
    color: MyColors.white,
    fontSize: 18,
  );
  static const titleFont = TextStyle(
    fontFamily: "Netflix_Sans",
    fontWeight: FontWeight.w700,
    color: MyColors.white,
    overflow: TextOverflow.ellipsis,
    fontSize: 20,
  );
}

BorderRadius circleBorder10() => BorderRadius.circular(10);
BorderRadius circleBorder5() => BorderRadius.circular(5);
