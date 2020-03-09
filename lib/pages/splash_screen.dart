import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';
import 'package:ingaz_fawry/utils/clippers_paintes/center_part.dart';
import 'package:ingaz_fawry/utils/clippers_paintes/my_clipper.dart';
import 'package:ingaz_fawry/utils/const.dart';

import 'auth/start_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  SequenceAnimation sequenceAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    _startAnimation();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  _startAnimation() async {
    sequenceAnimation = new SequenceAnimationBuilder()
        .addAnimatable(
          animatable: new Tween<double>(begin: -200, end: -80),
          from: Duration(seconds: 0),
          to: Duration(seconds: 1),
          tag: "top",
        )
        .addAnimatable(
          animatable: new Tween<double>(begin: -450, end: -180),
          from: Duration(seconds: 0),
          to: Duration(seconds: 1),
          tag: "center",
        )
        .addAnimatable(
          animatable: new Tween<double>(begin: -175, end: -75),
          from: Duration(seconds: 0),
          to: Duration(seconds: 1),
          tag: "bottom",
        )
        .addAnimatable(
          animatable: new Tween<double>(begin: 0, end: 1),
          from: Duration(seconds: 0),
          to: Duration(milliseconds: 2150),
          tag: "opacity",
        )
        .addAnimatable(
          animatable: new Tween<double>(begin: -180, end: 1000),
          from: Duration(seconds: 2),
          to: Duration(milliseconds: 2300),
          tag: "center",
        )
        .addAnimatable(
          animatable: new Tween<double>(begin: 0, end: 1),
          from: Duration(milliseconds: 2000),
          to: Duration(milliseconds: 2200),
          tag: "logo",
        )
        .addAnimatable(
          animatable: new Tween<double>(begin: -75, end: 95),
          from: Duration(milliseconds: 2750),
          to: Duration(milliseconds: 3000),
          tag: "bottom",
        )
        .addAnimatable(
          animatable: new ColorTween(begin: greenColor, end: Colors.white),
          from: Duration(milliseconds: 2000),
          to: Duration(milliseconds: 2300),
          tag: "background",
        )
        .animate(_animationController);

    _animationController.addListener(
      () {
        setState(
          () {},
        );
      },
    );
    _animationController.forward();

    Future.delayed(Duration(seconds: 5)).then(
      (value) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => StartPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: sequenceAnimation['background'].value,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              // top container
              _topContainer(),
              // bottom container
              _bottomContainer(),
              // center container
              _centerContainer(),
              // display text || image
              sequenceAnimation['opacity'].value == 1
                  ? _centerImage()
                  : Opacity(
                      opacity: sequenceAnimation['opacity'].value,
                      child: Image.asset(
                        'assets/images/e_outline.png',
                        width: ScreenUtil().setWidth(120),
                        height: ScreenUtil().setHeight(120),
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
    return Positioned(
      right: sequenceAnimation['bottom'].value,
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
    return Positioned(
      right: sequenceAnimation['top'].value,
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
    return Positioned(
      left: sequenceAnimation['center'].value,
      height: ScreenUtil().setHeight(180),
      child: ClipPath(
        clipper: CenterPart(),
        child: Container(
          width: ScreenUtil.screenWidth,
          color: purpleColor,
        ),
      ),
    );
  }
}
