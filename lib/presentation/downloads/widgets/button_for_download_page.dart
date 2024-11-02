import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/themes.dart';
import 'package:netflix/presentation/core/widgets/custom_small_widgets.dart';

class ButtonForDownloadPage extends StatelessWidget {
  const ButtonForDownloadPage({
    super.key,
    required this.padding,
    required this.bgColor,
    required this.text,
  });
  final double padding;
  final Color bgColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: padding),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            shape: RoundedRectangleBorder(borderRadius: circleBorder10())),
        child: Text(
          text,
          style: MyTextTheme.buttonThickFontFun(
              color: MyColors.white, weight: FontWeight.w500),
        ),
      ),
    );
  }
}
