import 'package:flutter/material.dart';
import 'package:my_porfolio/global/utils/constants.dart';

class WorkPageWeb extends StatelessWidget {
  const WorkPageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppConstants.unitHeightValue(context) * 100,
        ),
        const Center(child: Text('alaa')),
      ],
    );
  }
}
