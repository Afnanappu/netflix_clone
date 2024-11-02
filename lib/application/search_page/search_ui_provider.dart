import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchUiProvider = StateProvider.autoDispose(
  (ref) {
  
    return false;
  },
);

final searchControllerProvider = StateProvider(
  (_) => TextEditingController(),
);
