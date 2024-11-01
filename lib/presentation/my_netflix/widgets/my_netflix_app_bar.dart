import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class MyNetflixAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconData firstIcon;

  final void Function()? firstOnPressed;

  final IconData? secondIcon;

  final void Function()? secondOnPressed;

  final String? title;

  final Widget? leading;

  final PreferredSizeWidget? bottom;

  const MyNetflixAppBar(
      {super.key,
      this.title,
      this.leading,
      required this.firstIcon,
      this.firstOnPressed,
      this.secondIcon,
      this.secondOnPressed,
      this.bottom});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: title != null ? Text(title!) : null,
        leading: leading,
        bottom: bottom,
        actions: [
          IconButton(
              onPressed: firstOnPressed,
              icon: Icon(
                firstIcon,
                color: MyColors.white,
              )),
          if (secondIcon != null)
            IconButton(
                onPressed: secondOnPressed,
                icon: Icon(secondIcon, color: MyColors.white)),
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
