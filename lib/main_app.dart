import 'package:flutter/material.dart';
import 'package:my_porfolio/features/portfolio/presentation/pages/home_page.dart';
import 'package:my_porfolio/global/app_theme/app_theme_dark.dart';
import 'package:my_porfolio/global/app_theme/app_theme_light.dart';

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyPortfolio(),
      theme: getAppThemeDataLight(),
      darkTheme: getAppThemeDataDark(),
    );
  }
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const HomePage(),
    );
  }
}
