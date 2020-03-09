import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ingaz_fawry/utils/const.dart';

import 'followers_widgets.dart';

class Followers extends StatefulWidget {
  @override
  _FollowersState createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {
  String fillterBy = 'تصنيف حسب';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(14),
          right: ScreenUtil().setWidth(14),
          bottom: ScreenUtil().setHeight(14),
          top: ScreenUtil().setHeight(14)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: ScreenUtil().setWidth(90),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                autofocus: true,
                elevation: 2,
                isDense: true,
                icon: Icon(
                  FontAwesomeIcons.filter,
                  color: greenColor,
                  size: 14,
                ),
                items: <String>['item1', 'item2', 'item3', 'item4']
                    .map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        textAlign: TextAlign.right,
                      ),
                    );
                  },
                ).toList(),
                onChanged: (item) {
                  setState(
                    () {
                      fillterBy = item;
                    },
                  );
                },
                hint: Text(
                  '$fillterBy',
                  style: TextStyle(
                    color: greenColor,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return followerItem();
              },
              separatorBuilder: (_, index) {
                return Container(
                  height: ScreenUtil().setHeight(1),
                  width: double.infinity,
                  color: Colors.black,
                );
              },
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
