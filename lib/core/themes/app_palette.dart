import 'package:flutter/material.dart';

class AppPalette {
  static const accentColor = Color.fromRGBO(0, 165, 155, 1);
  static const primaryColor = Color.fromRGBO(15, 55, 89, 1);
  static const primaryMutedColor = Color.fromRGBO(9, 15, 71, 0.75);
  static const secondaryColor =  Color.fromRGBO(9, 15, 71, 1);
  static const secondaryMutedColor = Color.fromRGBO(9, 15, 71, 0.45);
  static  secondaryColorOpacity (double opt) => Color.fromRGBO(9, 15, 71, opt);
  static const tertiaryColor = Color.fromRGBO(255, 166, 41, 1);
  static const backgroundColor = Color.fromRGBO(255, 255, 255, 1);
  static const borderColor = Color.fromRGBO(9, 15, 71, 0.1);
}
