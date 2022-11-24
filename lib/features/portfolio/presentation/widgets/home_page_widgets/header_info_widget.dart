import 'package:flutter/material.dart';
import 'package:my_porfolio/global/utils/icon_broken.dart';

class HeaderInfoWidget extends StatelessWidget {
  const HeaderInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_literals_to_create_immutables
    return Column(children: [
      const ListTile(
        title: Text('ALAA AHMAD ALI AL AYATIM'),
        leading: Icon(IconBroken.Profile),
      ),
    ]);
  }
}
