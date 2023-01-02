import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_porfolio/features/portfolio/presentation/bloc/port_folio_bloc/portfolio_bloc.dart';
import 'package:my_porfolio/global/shared_widgets/photo_widget.dart';
import 'package:my_porfolio/global/utils/constants.dart';

import '../../../../../global/animations/tween_animation.dart';

class WorkPageWeb extends StatelessWidget {
  const WorkPageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTweenAnimation(
            widgetToAnimate: PhotoWidget(
          photoPath: 'assets/mobileApp.png',
          fun: () {
            BlocProvider.of<PortfolioBloc>(context)
                .add(const CallMobLinkEvent());
          },
        )),
        SizedBox(
          height: AppConstants.unitHeightValue(context) * 20,
        ),
         CustomTweenAnimation(
            widgetToAnimate: PhotoWidget(
          photoPath: 'assets/webApp.png',fun: () {
            BlocProvider.of<PortfolioBloc>(context)
                .add(const CallWebLinkEvent());
          },
        )),
      ],
    );
  }
}
