import 'package:flutter/material.dart';

class DownDecore1 extends CustomPainter {
  Paint _paint = Paint()..color;

  DownDecore1() {
    _paint = Paint()
      ..color = Color(0xffF3F0EB)
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(0.0, 0.0), Offset(size.width / 3, 0), _paint);
    canvas.drawLine(Offset(size.width / 3, 0), Offset(size.width / 5, size.height), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class DownDecore2 extends CustomPainter {
  Paint _paint = Paint()..color;

  DownDecore2() {
    _paint = Paint()
      ..color = Color(0xffF3F0EB)
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(0.0, 0.0), Offset(size.width / 2.5, 0), _paint);
    canvas.drawLine(Offset(size.width / 2.5, 0), Offset(size.width / 3, size.height), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
