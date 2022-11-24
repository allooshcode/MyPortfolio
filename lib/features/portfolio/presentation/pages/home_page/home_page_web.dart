import 'package:flutter/material.dart';
import 'package:my_porfolio/features/portfolio/presentation/widgets/home_page_widgets/header_info_widget.dart';

class HomePageWeb extends StatelessWidget {
  const HomePageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: const [HeaderInfoWidget()]),
    );
  }
}
