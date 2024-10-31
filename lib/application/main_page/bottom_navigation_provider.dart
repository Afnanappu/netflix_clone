import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavigationProvider =
    StateNotifierProvider<BottomNavigationIndexNotifier, int>(
  (ref) => BottomNavigationIndexNotifier(),
);
final bottomNavigationPageControllerProvider = Provider(
  (ref) {
    return PageController();
  },
);

class BottomNavigationIndexNotifier extends StateNotifier<int> {
  BottomNavigationIndexNotifier() : super(0);

  void updateIndex(int index) {
    print("BottomNavigationIndex: $index");
    state = index;
  }
}
