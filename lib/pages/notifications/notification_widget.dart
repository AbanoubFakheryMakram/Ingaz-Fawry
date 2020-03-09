import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ingaz_fawry/utils/const.dart';

Widget notificationCard({
  @required isClicked,
  @required bool isNewOver,
  @required String state,
  onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      width: ScreenUtil.screenWidth,
      color: isNewOver
          ? greenColor
          : isClicked ? backgroundColor : Color(0xffF2EFEA),
      height: ScreenUtil().setHeight(50),
      child: Padding(
        padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(12.0),
          right: ScreenUtil().setWidth(12.0),
          top: ScreenUtil().setWidth(8.0),
          bottom: ScreenUtil().setWidth(4.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '04:55 pm',
                    textAlign: TextAlign.right,
                    style: textStyle.copyWith(
                      fontSize: 11,
                      color: isNewOver ? Colors.white60 : Colors.grey[700],
                    ),
                  ),
                  Text(
                    '21/12/2019',
                    textAlign: TextAlign.right,
                    style: textStyle.copyWith(
                      fontSize: 11,
                      color: isNewOver ? Colors.white54 : Colors.grey[700],
                    ),
                  ),
                  isNewOver
                      ? Expanded(
                          child: Container(
                            color: Colors.white,
                            width: ScreenUtil().setWidth(75),
                            height: ScreenUtil().setHeight(15),
                            child: InkWell(
                              onTap: () {},
                              splashColor: greenColor,
                              highlightColor: greenColor,
                              child: Center(
                                child: Text(
                                  'قدم عرضك الان',
                                  style: TextStyle(
                                    color: greenColor,
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      !isNewOver
                          ? Text(
                              'طلب رقم #00215',
                              textAlign: TextAlign.right,
                              style: textStyle.copyWith(
                                fontSize: 10,
                                color: Colors.black54,
                              ),
                            )
                          : SizedBox.shrink(),
                      isNewOver || isClicked
                          ? Text(
                              '      طلبات العملاء',
                              textAlign: TextAlign.right,
                              style: textStyle.copyWith(
                                fontSize: 10,
                                color: isNewOver ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : SizedBox.shrink(),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'معاملة بدائرة الهجرة',
                        textAlign: TextAlign.right,
                        style: textStyle.copyWith(
                          fontSize: 14,
                          color: isNewOver ? Colors.white : Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(6),
                      ),
                      Icon(
                        FontAwesomeIcons.solidHandshake,
                        color: isNewOver
                            ? Colors.white
                            : isClicked ? Colors.black : purpleColor,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(6),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      isClicked
                          ? Icon(
                              Icons.check,
                              size: 14,
                              color: greenColor,
                            )
                          : SizedBox.shrink(),
                      SizedBox(
                        width: ScreenUtil().setWidth(11),
                      ),
                      Text(
                        state,
                        textAlign: TextAlign.right,
                        style: textStyle.copyWith(
                          fontSize: 10,
                          color: isNewOver ? Colors.white : Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget clickedNotificationSteps({bool isFour}) {
  return Column(
    children: <Widget>[
      Container(
        height: ScreenUtil().setHeight(20),
        width: ScreenUtil().setWidth(20),
        decoration: BoxDecoration(
          color: purpleColor,
          shape: BoxShape.circle,
        ),
      ),
      Container(
        height: ScreenUtil().setHeight(100),
        width: 2,
        color: purpleColor,
      ),
      Container(
        height: ScreenUtil().setHeight(20),
        width: ScreenUtil().setWidth(20),
        decoration: BoxDecoration(
          color: purpleColor,
          shape: BoxShape.circle,
        ),
      ),
      Container(
        height: ScreenUtil().setHeight(100),
        width: 2,
        color: purpleColor,
      ),
      Container(
        height: ScreenUtil().setHeight(20),
        width: ScreenUtil().setWidth(20),
        decoration: BoxDecoration(
          color: purpleColor,
          shape: BoxShape.circle,
        ),
      ),
      Container(
        height: ScreenUtil().setHeight(100),
        width: 2,
        color: purpleColor,
      ),
      isFour == null
          ? SizedBox.shrink()
          : Container(
              height: ScreenUtil().setHeight(20),
              width: ScreenUtil().setWidth(20),
              decoration: BoxDecoration(
                color: greenColor,
                shape: BoxShape.circle,
              ),
            ),
    ],
  );
}

Widget unClickedNotificationStep() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        height: ScreenUtil().setHeight(20),
        width: ScreenUtil().setWidth(20),
        decoration: BoxDecoration(
          color: purpleColor,
          shape: BoxShape.circle,
        ),
      ),
      Container(
        height: ScreenUtil().setHeight(115),
        width: 2,
        color: purpleColor,
      ),
      Container(
        height: ScreenUtil().setHeight(20),
        width: ScreenUtil().setWidth(20),
        decoration: BoxDecoration(
          color: purpleColor,
          shape: BoxShape.circle,
        ),
      ),
      Container(
        height: ScreenUtil().setHeight(115),
        width: 2,
        color: purpleColor,
      ),
      Container(
        height: ScreenUtil().setHeight(20),
        width: ScreenUtil().setWidth(20),
        decoration: BoxDecoration(
          color: purpleColor,
          shape: BoxShape.circle,
        ),
      ),
      Container(
        height: ScreenUtil().setHeight(115),
        width: 2,
        color: purpleColor,
      ),
      Container(
        height: ScreenUtil().setHeight(20),
        width: ScreenUtil().setWidth(20),
        decoration: BoxDecoration(
          color: purpleColor,
          shape: BoxShape.circle,
        ),
      ),
      Container(
        height: ScreenUtil().setHeight(115),
        width: 2,
        color: purpleColor,
      ),
      Container(
        height: ScreenUtil().setHeight(20),
        width: ScreenUtil().setWidth(20),
        decoration: BoxDecoration(
          color: greenColor,
          shape: BoxShape.circle,
        ),
      ),
    ],
  );
}
