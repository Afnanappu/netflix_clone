
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/themes.dart';

class ElevatedButtonForHome extends StatelessWidget {
  const ElevatedButtonForHome({
    super.key,
    required this.text,
    required this.icon,
    required this.bgColor,
    this.color = MyColors.black,
  });
  final String text;
  final Icon icon;
  final Color color;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      label: Text(
        text,
        style: MyTextTheme.buttonThickFontFun(color: color),
      ),
      icon: icon,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: circleBorder5()),
        backgroundColor: bgColor,
        textStyle: MyTextTheme.buttonThickFontFun(),
      ),
    );
  }
}
