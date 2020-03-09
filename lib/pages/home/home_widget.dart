import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ingaz_fawry/pages/contatct_us/contact_us.dart';
import 'package:ingaz_fawry/pages/followers/followers_page.dart';
import 'package:ingaz_fawry/pages/orders/orders_page.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';

Widget bottomBarIcon({IconData icon, bool isSelected, Function onPressed}) {
  return IconButton(
    icon: Icon(
      icon,
      color: isSelected ? Colors.white : Colors.white24,
      size: 27,
    ),
    onPressed: onPressed,
  );
}

Widget buildRowService(
    {String title1, IconData icon1, String title2, IconData icon2}) {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: ScreenUtil().setWidth(90),
          decoration: BoxDecoration(
            border: Border.all(
              color: purpleColor,
              width: 1,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon1,
                  color: purpleColor,
                  size: 40,
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(10),
                ),
                Text(
                  title1,
                  textAlign: TextAlign.center,
                  style: textStyle.copyWith(
                    fontSize: 12,
                    color: purpleColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: ScreenUtil().setWidth(20),
        ),
        Container(
          width: ScreenUtil().setWidth(90),
          decoration: BoxDecoration(
            border: Border.all(
              color: purpleColor,
              width: 1,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon2,
                  color: purpleColor,
                  size: 40,
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(7),
                ),
                Text(
                  title2,
                  textAlign: TextAlign.center,
                  style: textStyle.copyWith(
                    fontSize: 12,
                    color: purpleColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget centerPart() {
  return Container(
    height: ScreenUtil().setHeight(155),
    width: double.infinity,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: ScreenUtil().setHeight(5),
          ),
          Text(
            'الخدمات',
            textAlign: TextAlign.right,
            style: textStyle.copyWith(
              color: purpleColor,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(10),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: buildRowService(
                    title1: 'التعمـــيد',
                    icon1: FontAwesomeIcons.handHoldingUsd,
                    title2: 'المعاملات',
                    icon2: FontAwesomeIcons.solidHandshake,
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setWidth(20),
                ),
                Expanded(
                  child: buildRowService(
                    title1: 'الشركات',
                    icon1: FontAwesomeIcons.users,
                    title2: 'استفسار مدفوع',
                    icon2: FontAwesomeIcons.commentDollar,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget topPart() {
  return Container(
    height: ScreenUtil().setHeight(110),
    child: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          'assets/images/1.jpg',
        ),
        Container(
          color: Colors.black45,
        ),
        Padding(
          padding: EdgeInsets.all(
            ScreenUtil().setHeight(14.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Text(
                'تعميد',
                textAlign: TextAlign.right,
                style: textStyle,
              ),
              Text(
                'معاملات',
                textAlign: TextAlign.right,
                style: textStyle,
              ),
              Text(
                'استفسارات',
                textAlign: TextAlign.right,
                style: textStyle,
              ),
              Text(
                'كل ما يخص التعاملات الحكومية',
                textAlign: TextAlign.right,
                style: textStyle,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget bottomPart() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        bottomPartItem(
          icon: Icons.people,
          count: '+3000\n',
          title: 'معقب/مكتب',
        ),
        bottomPartItem(
          icon: FontAwesomeIcons.solidHandshake,
          count: '+30000',
          title: '\nعملية تمت',
        ),
        bottomPartItem(
          icon: Icons.person,
          count: '+354,058',
          title: '\nعميل',
        ),
      ],
    ),
  );
}

Widget homePage() {
  return Container(
    child: SingleChildScrollView(
      child: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            topPart(),
            centerPart(),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            bottomPart(),
            SizedBox(
              height: ScreenUtil().setHeight(70),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget homeBottomBar(BuildContext context) {
  return BottomAppBar(
    elevation: 0,
    color: purpleColor,
    child: Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          bottomBarIcon(
            icon: FontAwesomeIcons.solidQuestionCircle,
            isSelected: false,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ContactUs(),
                ),
              );
            },
          ),
          bottomBarIcon(
              icon: Icons.business_center,
              isSelected: false,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => FollowersPage(),
                  ),
                );
              }),
          SizedBox(
            width: ScreenUtil().setWidth(70),
          ),
          bottomBarIcon(
            icon: Icons.storage,
            isSelected: false,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => OrdersPage(),
                ),
              );
            },
          ),
          bottomBarIcon(
            icon: Icons.home,
            isSelected: true,
          ),
        ],
      ),
    ),
  );
}
