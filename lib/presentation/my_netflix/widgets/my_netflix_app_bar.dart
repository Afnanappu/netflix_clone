import 'package:flutter/material.dart';

class MyNetflixAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyNetflixAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(title: const Text('My Netflix'), actions: [
      IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded)),
    ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
