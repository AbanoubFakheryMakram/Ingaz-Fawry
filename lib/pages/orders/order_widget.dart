 import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ingaz_fawry/utils/const.dart';

import 'finished_order_page.dart';

Widget orderItem(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        ScreenUtil().setHeight(4),
      ),
      color: Color(0xffF2EFEA),
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => FinishedOrderPage(),
            ),
          );
        },
        title: Text(
          'معاملة بدائرة الهجرة',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '21/12/2019',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 10),
            ),
            Text(
              '04:55',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 10),
            ),
            RatingBar(
              initialRating: 5,
              minRating: 1,
              direction: Axis.horizontal,
              itemSize: 15,
              textDirection: TextDirection.ltr,
              ignoreGestures: true,
              glow: true,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ],
        ),
        trailing: Icon(
          FontAwesomeIcons.solidHandshake,
          color: purpleColor,
        ),
      ),
    );
  }