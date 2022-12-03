import 'package:flutter/material.dart';
import 'package:my_porfolio/features/portfolio/presentation/widgets/home_page_widgets/web/header_info_web_widget.dart';
import 'package:my_porfolio/global/animations/tween_animation.dart';
import 'package:my_porfolio/global/shared_widgets/curve_painter.dart';
import 'package:my_porfolio/global/utils/constants.dart';

import '../../widgets/home_page_widgets/web/photo_home.dart';

class HomePageWeb extends StatelessWidget {
  const HomePageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: const [
                Expanded(child: HeaderInfoWebWidget()),
                CustomTweenAnimation(widgetToAnimate: PhotoHome()),
              ],
            ),
            SizedBox(
              height: AppConstants.unitHeightValue(context) * 80,
            ),
            Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 243, 239, 239),
              child: CustomPaint(
                painter: CurvePainter(),
              ),
            ),
          ]),
    );
  }
}
