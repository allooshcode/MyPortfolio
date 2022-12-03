import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomTweenAnimation extends StatefulWidget {
  const CustomTweenAnimation({super.key, required this.widgetToAnimate});
  final Widget widgetToAnimate;

  @override
  State<CustomTweenAnimation> createState() => _CustomTweenAnimationState();
}

class _CustomTweenAnimationState extends State<CustomTweenAnimation>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  late Tween<double> tween;

  @override
  void initState() {
    tween = Tween(begin: 200, end: 400);
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    animation = tween.animate(controller)
      ..addListener(() {
        setState(() {});
      });

    controller.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(animation.value);
    }
    return SizedBox(
      height: animation.value,
      width: animation.value,
      child: widget.widgetToAnimate,
    );
    // return TweenAnimationBuilder(
    //   tween: tween,
    //   duration: const Duration(
    //     seconds: 5,
    //   ),
    //   builder: (BuildContext context, double value, Widget? child) {
    //     return widget.widgetToAnimate;
    //   },
    // );
  }
}
