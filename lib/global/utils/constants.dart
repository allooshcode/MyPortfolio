import 'package:flutter/material.dart';

class AppConstants {
  static double unitHeightValue(BuildContext context) {
    return MediaQuery.of(context).size.height * 0.01;
  }

  static const double headerText = 6;
  static const double secondaryText = 4;

  static const double photoHigh = 56;
  static const double photoWidth = 39;
}
