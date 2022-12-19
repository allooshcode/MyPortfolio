import 'package:flutter/material.dart';
import 'package:my_porfolio/container_injection.dart';
import 'package:my_porfolio/main_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initSl();
  runApp(const MyPortfolioApp());
}
