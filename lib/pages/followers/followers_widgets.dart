import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ingaz_fawry/utils/clippers_paintes/followers_button_painter.dart';
import 'package:ingaz_fawry/utils/const.dart';

Widget followerItem() {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: ScreenUtil().setWidth(10),
    ),
    child: Center(
      child: Container(
        height: ScreenUtil().setHeight(50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CustomPaint(
                  painter: FollowersButtonPainter(greenColor),
                  child: InkWell(
                    onTap: () {},
                    splashColor: greenColor,
                    child: Container(
                      height: ScreenUtil().setHeight(15),
                      width: ScreenUtil().setWidth(80),
                      child: Center(
                        child: Text(
                          'الملف الشخصي',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 9,
                            color: greenColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(4),
                ),
                CustomPaint(
                  painter: FollowersButtonPainter(purpleColor),
                  child: InkWell(
                    onTap: () {},
                    splashColor: purpleColor,
                    child: Container(
                      height: ScreenUtil().setHeight(15),
                      width: ScreenUtil().setWidth(80),
                      child: Center(
                        child: Text(
                          'الخدمات المتاحة',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 9,
                            color: purpleColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'راندي اوليفر',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'لوريم ابسوم',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                RotatedBox(
                  quarterTurns: 2,
                  child: RatingBar(
                    initialRating: 3.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    glow: true,
                    glowColor: Colors.amber,
                    glowRadius: 10,
                    maxRating: 5,
                    itemSize: 15,
                    itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
              ],
            ),
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(
                'assets/images/followers.jpg',
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget followerTabBar() {
  return TabBar(
    indicatorColor: Colors.transparent,
    labelColor: Colors.white,
    labelPadding: EdgeInsets.all(0),
    unselectedLabelColor: purpleColor,
    indicatorPadding: EdgeInsets.all(0),
    tabs: [
      Tab(
        child: Container(
          margin: EdgeInsets.only(
            left: 8,
            top: 5,
            bottom: 5,
          ),
          decoration: BoxDecoration(
            color: Color(0xff562485),
            border: Border.all(
              color: Color(0xff562485),
              width: 1,
            ),
          ),
          child: Center(
            child: Text(
              'مكتب الخدمات',
            ),
          ),
        ),
      ),
      Tab(
        child: Container(
          margin: EdgeInsets.only(
            right: 8,
            top: 5,
            bottom: 5,
          ),
          padding: EdgeInsets.symmetric(horizontal: 7),
          decoration: BoxDecoration(
            color: Color(0xff562485),
            border: Border.all(
              color: Color(0xff562485),
              width: 1,
            ),
          ),
          child: Center(
            child: Text(
              'المعقبين',
            ),
          ),
        ),
      ),
    ],
  );
}
