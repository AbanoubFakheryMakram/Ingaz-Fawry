import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ingaz_fawry/utils/clippers_paintes/my_clipper.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/page_down_decoration.dart';

import 'login_register_page.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/logo.png',
          ),
          SizedBox(
            height: ScreenUtil().setHeight(30),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: ClipPath(
                    clipper: MyClipper(),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => LoginOrRegisterPage(type: 'office'),
                        ),
                      ),
                      child: Container(
                        height: ScreenUtil().setHeight(70),
                        color: greenColor,
                        child: Center(
                          child: cardChild(
                            icon: FontAwesomeIcons.building,
                            text: 'معقب/مكتب خدمات',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(10),
                ),
                Expanded(
                  child: ClipPath(
                    clipper: MyClipper(),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => LoginOrRegisterPage(type: 'user'),
                        ),
                      ),
                      child: Container(
                        height: ScreenUtil().setHeight(70),
                        color: purpleColor,
                        child: cardChild(
                          text: 'مستخدم',
                          icon: Icons.person,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(15),
          ),
          pageDownDecoration(
            firstDecorHeight: ScreenUtil().setHeight(80),
            sceondDecoreHeight: ScreenUtil().setHeight(40),
          ),
        ],
      ),
    );
  }

  Widget cardChild({String text, IconData icon, double iconSize = 45}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        textBaseline: TextBaseline.alphabetic,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
            size: iconSize,
          ),
          SizedBox(
            height: ScreenUtil().setHeight(5),
          ),
          AutoSizeText(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 9,
            ),
          ),
        ],
      ),
    );
  }
}
