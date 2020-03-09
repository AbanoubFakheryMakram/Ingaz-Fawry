import 'package:flutter/material.dart';

class TextFormFieldShape extends CustomPainter {
  Color color;

  TextFormFieldShape(Color color) {
    this.color = color;
  }

  Paint _paint = Paint()
    ..strokeWidth = 2.0
    ..strokeCap = StrokeCap.butt;

  @override
  void paint(Canvas canvas, Size size) {
    _paint.color = this.color;
    canvas.drawLine(Offset(10, 0), Offset(0, size.height), _paint);
    canvas.drawLine(
        Offset(0, size.height), Offset(size.width, size.height), _paint);
    canvas.drawLine(
        Offset(size.width, size.height), Offset(size.width + 10, 0), _paint);
    canvas.drawLine(Offset(size.width + 10, 0), Offset(10, 0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
