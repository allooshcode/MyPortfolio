import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_porfolio/container_injection.dart';
import 'package:my_porfolio/features/portfolio/presentation/pages/main_layout.dart';
import 'package:my_porfolio/global/app_theme/app_theme_dark.dart';
import 'package:my_porfolio/global/app_theme/app_theme_light.dart';

import 'features/portfolio/presentation/bloc/port_folio_bloc/portfolio_bloc.dart';

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(providers: [
        BlocProvider(
          create: (context) => PortfolioBloc(
            callLinkedInUsecase: sl(),
            callResumeUsecase: sl(),
          ),
        )
      ], child: const MyPortfolio()),
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
