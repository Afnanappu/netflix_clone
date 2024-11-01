import 'package:flutter/material.dart';

class SizedBox10 extends StatelessWidget {
  const SizedBox10({
    super.key,
    this.height = 10,
  });
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
