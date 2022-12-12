import 'package:flutter/material.dart';
import 'package:my_porfolio/features/portfolio/presentation/pages/main_layout.dart';
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
      themeMode: ThemeMode.light,
    );
  }
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.blue,
      // appBar: AppBar(),
      body: MainLayout(),
    );
  }
}
