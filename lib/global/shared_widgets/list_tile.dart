import 'package:flutter/material.dart';
import 'package:my_porfolio/global/app_theme/app_theme_light.dart';

import '../utils/constants.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget(
      {super.key,
      required this.textData,
      this.iconLeading,
      this.iconTrailing,
      this.color});

  final String textData;
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
                  fontSize: AppConstants.headerText *
                      AppConstants.unitHeightValue(context)),
              textAlign: TextAlign.center,
            ),
            leading: Icon(iconLeading,
                color: color,
                size: AppConstants.unitHeightValue(context) *
                    AppConstants.headerText),
          );
  }
}
