import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';
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
          animatable: new Tween<double>(begin: -420, end: -180),
          from: Duration(seconds: 0),
          to: Duration(seconds: 1),
          tag: "center",
        )
        .addAnimatable(
          animatable: new Tween<double>(begin: -195, end: -75),
          from: Duration(seconds: 0),
          to: Duration(seconds: 1),
          tag: "bottom",
        )
        .addAnimatable(
          animatable: new Tween<double>(begin: 0, end: 1),
          from: Duration(seconds: 0),
          to: Duration(milliseconds: 2000),
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
      (value) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => StartPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: sequenceAnimation['background'].value,
        body: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: <Widget>[
            // top container
            _topContainer(),
            // bottom container
            _bottomContainer(),
            // center container
            _centerContainer(),
            // display text || image
            sequenceAnimation['logo'].value == 1
                ? _centerImage()
                : sequenceAnimation['opacity'].value == .7
                    ? SizedBox.shrink()
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
      right: sequenceAnimation['bottom'].value,
      bottom: 0,
      child: ClipPath(
        clipper: MyClipper(),
        child: Container(
          height: ScreenUtil().setHeight(60),
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
      right: sequenceAnimation['top'].value,
      top: 0,
      child: ClipPath(
        clipper: MyClipper(),
        child: Container(
          height: ScreenUtil().setHeight(60),
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
      left: sequenceAnimation['center'].value,
      height: ScreenUtil().setHeight(260),
      child: ClipPath(
        clipper: MyClipper(),
        child: Container(
          width: ScreenUtil.screenWidth,
          color: purpleColor,
        ),
      ),
    );
  }
}
