import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ingaz_fawry/utils/clippers_paintes/decore.dart';

Widget pageDownDecoration({
  double firstDecorHeight,
  double sceondDecoreHeight,
  double firstWidth,
  double secondWidth,
}) {
  return Align(
    child: Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        CustomPaint(
          painter: DownDecore1(),
          child: Container(
            width: firstWidth ?? double.infinity,
            height: firstDecorHeight ?? ScreenUtil().setHeight(130),
          ),
        ),
        CustomPaint(
          painter: DownDecore2(),
          child: Container(
            width: secondWidth ?? double.infinity,
            height: sceondDecoreHeight ?? ScreenUtil().setHeight(65),
          ),
        ),
      ],
    ),
  );
}
