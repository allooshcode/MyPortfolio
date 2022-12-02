import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // var paint = Paint()
    //   ..color = Colors.yellow
    //   ..strokeWidth = 20.0;

    // var path = Path()
    //   ..moveTo(0, 0)
    //   ..lineTo(0, 100)
    //   ..lineTo(100, 100)
    //   ..lineTo(100, 0);

    // canvas.drawPath(path, paint);
    var paint = Paint();
    paint.color = Colors.green[800]!;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, 0);
    // path.quadraticBezierTo(150, -150, 300, -150);

    //  path.moveTo(600, -300);

    path.quadraticBezierTo(300, -100, size.width / 3, -100);
    path.quadraticBezierTo(size.width / 1.5, -100, size.width, -200);

    // path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
    //     size.width * 1.0, size.height * 0.9167);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
