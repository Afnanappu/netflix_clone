
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class NavigationTileMyNetflixPage extends StatelessWidget {
  const NavigationTileMyNetflixPage({
    super.key,
    required this.text,
    required this.icon,
    required this.icColor,
  });
  final String text;
  final IconData icon;
  final Color icColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: const TextStyle(
            fontFamily: 'Netflix_Sans',
            fontSize: 16,
            fontWeight: FontWeight.w500),
      ),
      leading: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: icColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(icon, color: MyColors.white)),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
    );
  }
}
