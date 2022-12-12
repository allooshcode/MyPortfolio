import 'package:flutter/material.dart';
import 'package:my_porfolio/global/app_theme/app_theme_light.dart';

import '../utils/constants.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.textData,
      this.iconLeading,
      this.iconTrailing,
      this.color,
      required this.fontSize});

  final String textData;
  final double fontSize;
  final IconData? iconLeading;
  final IconData? iconTrailing;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width <= 20
        ? const SizedBox()
        : ListTile(
            title: Text(
              textData,
              style: getAppThemeDataLight().textTheme.bodyLarge?.copyWith(
                  fontSize: fontSize * AppConstants.unitHeightValue(context)),
              textAlign: TextAlign.start,
            ),
            leading: Icon(iconLeading,
                color: color,
                size: AppConstants.unitHeightValue(context) *
                    AppConstants.headerText),
          );
  }
}
