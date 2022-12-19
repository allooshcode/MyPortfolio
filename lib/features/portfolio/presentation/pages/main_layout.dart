import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_porfolio/features/portfolio/presentation/bloc/port_folio_bloc/portfolio_bloc.dart';
import 'package:my_porfolio/features/portfolio/presentation/pages/home_page.dart';
import 'package:my_porfolio/features/portfolio/presentation/pages/web/work_page_web.dart';
import 'package:my_porfolio/global/animations/fade_animation.dart';
import 'package:my_porfolio/global/shared_widgets/custom_button.dart';
import 'package:my_porfolio/global/utils/icon_broken.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final homeKey = GlobalKey();
    final workKey = GlobalKey();

    return Scaffold(
      appBar: AppBar(actions: [
        CustomButton(
            fun: () {
              BlocProvider.of<PortfolioBloc>(context)
                  .add(const CallResumeEvent());
            },
            title: "Resume",
            icon: IconBroken.Edit_Square),
        CustomButton(
            fun: () {
              Scrollable.ensureVisible(homeKey.currentContext!);
            },
            title: "Home",
            icon: IconBroken.Home),
        CustomButton(
            fun: () {
              Scrollable.ensureVisible(workKey.currentContext!);
            },
            title: "Work",
            icon: IconBroken.Work)
      ]),
      body: SingleChildScrollView(
        child: Column(children: [
          CustomFadeAnimation(
            widgetToAnimate: HomePage(
              key: homeKey,
            ),
          ),
          CustomFadeAnimation(
            widgetToAnimate: WorkPageWeb(
              key: workKey,
            ),
          )
        ]),
      ),
    );
  }
}
