import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ingaz_fawry/utils/clippers_paintes/text_input_feild_painter.dart';
import 'package:ingaz_fawry/utils/const.dart';

Widget textFormField({
  @required label,
  @required String hint,
  @required TextInputType keyboardType,
  double lableFontSize = 14,
  TextStyle labelTextStyle,
  TextStyle hintTextStyle,
  TextAlign textAlign = TextAlign.right,
  double horizontalPadding,
  double width,
  double height,
  double contentHorizontalPadding = 15,
  bool enable = true,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: horizontalPadding ?? ScreenUtil().setWidth(28),
    ),
    child: Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            label,
            textAlign: labelTextStyle ?? TextAlign.right,
            style: textStyle.copyWith(
              color: purpleColor,
              fontSize: lableFontSize,
            ),
          ),
        ),
        CustomPaint(
          painter: TextFormFieldShape(purpleColor),
          child: Container(
            width: width ?? ScreenUtil.screenWidth / 2,
            height: height ?? ScreenUtil().setHeight(40),
            child: Center(
              child: TextFormField(
                enabled: enable,
                textAlign: textAlign ?? TextAlign.right,
                keyboardType: keyboardType,
                cursorColor: purpleColor,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: purpleColor,
                      style: BorderStyle.none,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: purpleColor,
                      style: BorderStyle.none,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(contentHorizontalPadding),
                  ),
                  hintText: hint,
                  hintStyle: hintTextStyle ??
                      TextStyle(
                        fontSize: 11,
                      ),
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
