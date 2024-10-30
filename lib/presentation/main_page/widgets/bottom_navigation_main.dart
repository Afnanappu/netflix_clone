import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix/application/main_page/bottom_navigation_provider.dart';
import 'package:netflix/core/colors/colors.dart';
class BottomNavigationMain extends ConsumerWidget {
  const BottomNavigationMain({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNavIndex = ref.watch(bottomNavigationProvider);
    final PageController pageController =
        ref.watch(bottomNavigationPageControllerProvider);
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.gamepad_outlined), label: 'Games'),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined), label: 'News & Hot'),
        BottomNavigationBarItem(
            icon: Icon(Icons.handshake_outlined), label: 'My Netflix'),
      ],
      onTap: (index) {
        //Updating the bottom navigation index using provider.
        ref.read(bottomNavigationProvider.notifier).updateIndex(index);

        //updating the page controller value to jump between screens.
        pageController.jumpToPage(index);
      },
      currentIndex: bottomNavIndex,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      selectedItemColor: MyColors.white,
      backgroundColor: MyColors.black,
      showSelectedLabels: true,
      unselectedItemColor: MyColors.lightGrey,
    );
  }
}
