import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.fun, required this.title, required this.icon});

  final VoidCallback fun;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(icon),
      label: Text(title),
      onPressed: () => fun(),
    );
  }
}
