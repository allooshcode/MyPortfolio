import 'package:flutter/material.dart';
import 'package:my_porfolio/global/app_colors/app_colors_dark.dart';

ThemeData getAppThemeDataLight() {
  return ThemeData(
      // scaffoldBackgroundColor: Colors.blue[400],
      scaffoldBackgroundColor: const Color(0xFF26a0d3),
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
