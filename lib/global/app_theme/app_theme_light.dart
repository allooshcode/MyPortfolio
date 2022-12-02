import 'package:flutter/material.dart';
import 'package:my_porfolio/global/app_colors/app_colors_dark.dart';

ThemeData getAppThemeDataLight() {
  return ThemeData(
      textTheme: const TextTheme(
          bodyLarge: TextStyle(
        color: AppColorsLight.primaryColor,
      )),
      iconTheme: const IconThemeData(color: AppColorsLight.primaryColor),
      primaryIconTheme: const IconThemeData(color: Colors.yellow),
      listTileTheme: const ListTileThemeData(
        iconColor: AppColorsLight.secondaryColor,
      ));
  //primaryIconTheme: const IconThemeData(color: Colors.red));
}
