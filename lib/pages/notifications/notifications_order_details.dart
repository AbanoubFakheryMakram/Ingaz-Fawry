import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';
import 'notification_widget.dart';

class NotificationOrderDetails extends StatefulWidget {
  @override
  _NotificationOrderDetailsState createState() =>
      _NotificationOrderDetailsState();
}

class _NotificationOrderDetailsState extends State<NotificationOrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: sideMenu(context),
      ),
      appBar: appBar(
        context: context,
        icon: Icons.keyboard_arrow_left,
        title: 'الطلبات',
        onTap: () {
          Navigator.of(context).pop();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () async {
          await showOptionsDialog(context);
        },
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 36,
        ),
      ),
      bottomNavigationBar: bottomBar(
        context: context,
        isContact: false,
        isFollowers: false,
        isHome: true,
        isOrders: false,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: ScreenUtil().setHeight(16),
              right: ScreenUtil().setHeight(16),
            ),
            child: SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'معاملة بدائرة الهجرة',
                        style: textStyle.copyWith(
                          color: purpleColor,
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.solidHandshake,
                        color: purpleColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  Text(
                    'حالة الطلب: جديد',
                    textAlign: TextAlign.right,
                    style: textStyle.copyWith(
                      color: purpleColor,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'جهة المعاملة: دائرة الجوازات',
                    textAlign: TextAlign.right,
                    style: textStyle.copyWith(
                      color: purpleColor,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'تفاصيل المعاملة',
                    textAlign: TextAlign.right,
                    style: textStyle.copyWith(
                      color: purpleColor,
                      fontSize: 14,
                    ),
                  ),
                  Container(
                    child: Text(
                      'دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات',
                      textAlign: TextAlign.right,
                      style: textStyle.copyWith(
                        color: purpleColor,
                        fontSize: 11,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  Text(
                    'الخدمة المطلوبة: تجديد الاقامة',
                    textAlign: TextAlign.right,
                    style: textStyle.copyWith(
                      color: purpleColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
