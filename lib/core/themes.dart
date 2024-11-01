import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class MyTextTheme {
  static const lightGreyFont = TextStyle(
    color: MyColors.lightGrey,
    fontSize: 18,
  );
  static TextStyle buttonThickFontFun([Color color = MyColors.black]) =>
      TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 17);

  static const posterTitleFont = TextStyle(
    fontFamily: "Netflix_Sans",
    fontWeight: FontWeight.w700,
    color: MyColors.white,
    fontSize: 18,
  );
}

BorderRadius circleBorder10() => BorderRadius.circular(10);
BorderRadius circleBorder5() => BorderRadius.circular(5);


class SizedBox10 extends StatelessWidget {
  const SizedBox10({
    super.key,
    this.height = 10,
  });
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}