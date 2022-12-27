import 'package:flutter/material.dart';
import 'package:my_porfolio/global/shared_widgets/photo_widget.dart';
import 'package:my_porfolio/global/utils/constants.dart';

import '../../../../../global/animations/tween_animation.dart';

class WorkPageWeb extends StatelessWidget {
  const WorkPageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTweenAnimation(
            widgetToAnimate: PhotoWidget(
          photoPath: 'assets/mobileApp.png',
        )),
        SizedBox(
          height: AppConstants.unitHeightValue(context) * 20,
        ),
        const CustomTweenAnimation(
            widgetToAnimate: PhotoWidget(
          photoPath: 'assets/webApp.png',
        )),
      ],
    );
  }
}
