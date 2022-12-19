import 'package:flutter/material.dart';
import 'package:my_porfolio/global/utils/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.fun, required this.title, required this.icon});

  final VoidCallback fun;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: AppConstants.unitHeightValue(context) * 3,
          left: AppConstants.unitWidthValu(context) * 3,
          right: AppConstants.unitWidthValu(context) * 3,
          bottom: AppConstants.unitHeightValue(context) * 3),
      child: ElevatedButton.icon(
        icon: Icon(icon),
        label: Text(title),
        onPressed: () => fun(),
      ),
    );
  }
}
