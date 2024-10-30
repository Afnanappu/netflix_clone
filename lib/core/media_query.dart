import 'package:flutter/material.dart';

class MyMediaQuery {

  //screen width
  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;
  //screen height
  static double heigh(BuildContext context) =>
      MediaQuery.of(context).size.height;
}
