import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ingaz_fawry/utils/clippers_paintes/my_clipper.dart';
import 'package:ingaz_fawry/utils/const.dart';

class TheButton extends StatelessWidget {
  final Widget child;
  final Function ontap;
  final Color color;
  final double width;
  final double height;
  final double verticalMargin;
  final tapSplashColor;

  const TheButton({
    Key key,
    @required this.child,
    this.ontap,
    this.verticalMargin = 12,
    this.width,
    this.height = 35,    
    this.tapSplashColor,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      splashColor: tapSplashColor ?? greenColor.withOpacity(.5),
      child: ClipPath(
        clipper: MyClipper(),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: verticalMargin),
          height: height,
          width: width ?? ScreenUtil.screenWidth / 3,
          child: Center(
            child: child,
          ),
          color: color,
        ),
      ),
    );
  }
}