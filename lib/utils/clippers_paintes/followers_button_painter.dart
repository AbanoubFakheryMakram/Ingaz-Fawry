import 'package:flutter/material.dart';

class FollowersButtonPainter extends CustomPainter {
  final Color paintColor;

  FollowersButtonPainter(this.paintColor);

  @override
  void paint(Canvas canvas, Size size) {
    Paint _paint = Paint()
      ..strokeWidth = 1
      ..color = paintColor
      ..style = PaintingStyle.stroke;

    Path path = Path();
    path.moveTo(10, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width - 10, size.height);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
