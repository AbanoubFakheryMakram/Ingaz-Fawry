import 'package:flutter/material.dart';

class SmallContainerAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(3, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width - 3, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return oldClipper != this;
  }
}
