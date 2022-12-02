import 'package:flutter/material.dart';
import 'package:my_porfolio/global/shared_widgets/list_tile.dart';
import 'package:my_porfolio/global/utils/icon_broken.dart';

import '../../../../../../global/utils/constants.dart';

class HeaderInfoWebWidget extends StatelessWidget {
  const HeaderInfoWebWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_literals_to_create_immutables
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const ListTileWidget(
            textData: 'ALAA AHMAD ALI AL AYATIM',
            iconLeading: IconBroken.Profile,
          ),
          SizedBox(
            height: AppConstants.secondaryText *
                AppConstants.unitHeightValue(context),
          ),
          const ListTileWidget(
            textData: 'FLUTTER DEVELOPER',
            iconLeading: IconBroken.Work,
            // color: AppColorsLight.secondaryColor,
          ),
        ]);
  }
}
