import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchUiProvider = StateProvider.autoDispose(
  (_) {
    return true;
  },
);

final searchControllerProvider = StateProvider(
  (_) => TextEditingController(),
);
