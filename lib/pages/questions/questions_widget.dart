import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';

class QuestionItem extends StatefulWidget {
  @override
  _QuestionItemState createState() => _QuestionItemState();
}

class _QuestionItemState extends State<QuestionItem>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  bool isClicked = false;
  Duration duration = Duration(milliseconds: 500);

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: duration,
      upperBound: 1,
      lowerBound: 0,
    );
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_animationController.status == AnimationStatus.completed) {
          _animationController.reverse();
          isClicked = !isClicked;
          setState(() {});
        } else if (_animationController.status == AnimationStatus.dismissed) {
          _animationController.forward(from: 0);
          isClicked = !isClicked;
          setState(() {});
        }
      },
      child: Center(
        child: Column(
          children: <Widget>[
            trackingFeild(
              width: ScreenUtil.screenWidth / 1.8,
              height: 20,
              label: '',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  AnimatedIcon(
                    size: 16,
                    icon: AnimatedIcons.add_event,
                    progress: _animationController,
                    color: purpleColor,
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(8),
                  ),
                  Text(
                    'سؤال واحد تست ؟',
                    style: textStyle.copyWith(
                      color: purpleColor,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            isClicked
                ? Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.only(
                        right: ScreenUtil().setWidth(40),
                        left: ScreenUtil().setWidth(40),
                      ),
                      child: AnimatedDefaultTextStyle(
                        duration: duration,
                        style: isClicked
                            ? TextStyle(fontSize: 12, color: Colors.black)
                            : TextStyle(fontSize: 0, color: Colors.black),
                        child: AutoSizeText(
                          'اجابة السوال, اجابة السوال, اجابة السوال, اجابة السوال, اجابة السوال, اجابة السوال, اجابة السوال, اجابة السوال, اجابة السوال, اجابة السوال, اجابة السوال, اجابة السوال',
                          textAlign: TextAlign.right,
                          maxLines: 4,
                        ),
                      ),
                    ),
                  )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

// FontAwesomeIcons.plusCircle,
