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


BorderRadius circleBorder10() => BorderRadius.circular(10);
BorderRadius circleBorder5() => BorderRadius.circular(5);
