import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ingaz_fawry/utils/clippers_paintes/my_clipper.dart';
import 'package:ingaz_fawry/utils/const.dart';

class TestFile extends StatefulWidget {
  @override
  _TestFileState createState() => _TestFileState();
}

class _TestFileState extends State<TestFile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            
            children: <Widget>[
              // top container
              _topContainer(),
              // bottom container
              _bottomContainer(),
              // center container
              _centerContainer(),
              // display text || image

              Center(
                child: Image.asset(
                  'assets/images/e_outline.png',
                  width: ScreenUtil().setWidth(140),
                  height: ScreenUtil().setHeight(140),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _centerImage() {
    return Image.asset(
      'assets/images/logo.png',
    );
  }

  Widget _bottomContainer() {
    // the start of this container is -135 from right
    // the end of this container is -75 then 95 from right
    return Positioned(
      right: -175,
      bottom: 0,
      child: ClipPath(
        clipper: MyClipper(),
        child: Container(
          height: ScreenUtil().setHeight(30),
          width: ScreenUtil().setWidth(345),
          color: purpleColor,
        ),
      ),
    );
  }

  Widget _topContainer() {
    // the start of this container is -200 from right
    // the end of this container is -80 from right
    return Positioned(
      right: -200,
      top: 0,
      child: ClipPath(
        clipper: MyClipper(),
        child: Container(
          height: ScreenUtil().setHeight(30),
          width: ScreenUtil().setWidth(330),
          color: purpleColor,
        ),
      ),
    );
  }

  Widget _centerContainer() {
    // the start of this container is -420 from left
    // the end of this container is -180 from left
    return Positioned(
      left: -450,
      top: ScreenUtil.screenWidth / 5,
      
      child: ClipPath(
        clipper: MyClipper(),
        child: Container(
          height: ScreenUtil().setHeight(180),
          width: ScreenUtil.screenWidth,
          color: purpleColor,
        ),
      ),
    );
  }
}
