import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class MyNetflixAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconData firstIcon;

  final void Function()? firstOnPressed;

  final IconData secondIcon;

  final void Function()? secondOnPressed;

  final String? title;

  final Widget? leading;

  const MyNetflixAppBar({
    super.key,
    this.title,
    this.leading,
    required this.firstIcon,
    this.firstOnPressed,
    required this.secondIcon,
    this.secondOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: title != null ? Text(title!) : null,
        leading: leading,
        actions: [
          IconButton(
              onPressed: firstOnPressed,
              icon: Icon(
                firstIcon,
                color: MyColors.white,
              )),
          IconButton(
              onPressed: secondOnPressed,
              icon: Icon(secondIcon, color: MyColors.white)),
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
