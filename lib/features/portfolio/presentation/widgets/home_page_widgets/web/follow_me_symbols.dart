import 'package:flutter/material.dart';
import 'package:my_porfolio/global/app_colors/app_colors_dark.dart';
import 'package:my_porfolio/global/utils/constants.dart';

class FollowMeSymboles extends StatelessWidget {
  const FollowMeSymboles({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          // onTap: ,
          child: Container(
              width: AppConstants.unitHeightValue(context) * 30,
              alignment: Alignment.center,
              height: AppConstants.unitHeightValue(context) * 30,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColorsLight.secondaryColor),
              child: Text('Linked In',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall)),
        ),
      ],
    );
  }
}
