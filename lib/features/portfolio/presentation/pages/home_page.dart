import 'package:flutter/material.dart';
import 'package:my_porfolio/features/portfolio/presentation/pages/mobile/home_page_mobile.dart';
import 'package:my_porfolio/features/portfolio/presentation/pages/web/home_page_web.dart';
import 'package:my_porfolio/global/utils/responser_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponserWidget(
      mobileWidget: HomePageMobile(),
      webWidget: HomePageWeb(),
    );
  }
}
