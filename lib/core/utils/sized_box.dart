import 'package:flutter/material.dart';

extension SizedboxExt on int {
  SizedBox get heightSB => SizedBox(height: toDouble());
  SizedBox get widthSB => SizedBox(width: toDouble());
}
extension SizedboxExtDoule on double {
  SizedBox get heightSB => SizedBox(height: toDouble());
  SizedBox get widthSB => SizedBox(width: toDouble());
}