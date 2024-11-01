import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class MyTextTheme {
  static const lightGreyFont = TextStyle(
    color: MyColors.lightGrey,
    fontSize: 18,
    fontFamily: "Netflix_Sans",
  );
  static const lightSmallGreyFont = TextStyle(
    color: MyColors.lightGrey,
    fontSize: 16,
    overflow: TextOverflow.ellipsis,
    fontFamily: "Netflix_Sans",
  );
  static const lightSmallSmallGreyFont = TextStyle(
    color: MyColors.lightGrey,
    fontSize: 14,
    overflow: TextOverflow.ellipsis,
    fontFamily: "Netflix_Sans",
  );
  static TextStyle buttonThickFontFun([Color color = MyColors.black]) =>
      TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 17);

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

