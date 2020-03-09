import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ingaz_fawry/pages/notifications/notifications_order_details.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/buttons.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';

class ClickedNotification extends StatefulWidget {
  @override
  _ClickedNotificationState createState() => _ClickedNotificationState();
}

class _ClickedNotificationState extends State<ClickedNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: sideMenu(context),
      ),
      appBar: appBar(
        context: context,
        icon: Icons.keyboard_arrow_left,
        title: 'طلبات العملاء',
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
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      '002125# رقم الطلب',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(5),
                  ),
                  Text(
                    'شرح المعاملة',
                    textAlign: TextAlign.right,
                    style:
                        textStyle.copyWith(color: Colors.black, fontSize: 11),
                  ),
                  Text(
                    'اريد ان اجدد اقامتي باسرع طريقة ممكنة معي كل الاوراق المطلوبة',
                    textAlign: TextAlign.right,
                    style:
                        textStyle.copyWith(color: Colors.black, fontSize: 11),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: buildIndicators(
                            indicatorsNumber: 3,
                            indicatorsColor: purpleColor,
                            pathColor: purpleColor,
                            children: stepsContent(context),
                            pathWidth: ScreenUtil().setWidth(2),
                            indicatorSize: ScreenUtil().setHeight(13),
                            pathHeight: ScreenUtil().setHeight(85),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(30),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: TheButton(
                      ontap: () {},
                      child: Text(
                        'اتممت المهمة',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: greenColor,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: TheButton(
                      verticalMargin: 3,
                      ontap: () {},
                      child: Text(
                        'تواجه صعوبه؟',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: purpleColor,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(60),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> stepsContent(BuildContext context) {
    List<Widget> childrens = [];
    childrens.add(
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            '04:55 pm',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          Text(
            '21/12/2019',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          Text(
            'تم توكيلك لهذا الطلب',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: purpleColor,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(4),
          ),
          Align(
            alignment: Alignment.center,
            child: RaisedButton(
              color: purpleColor,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => NotificationOrderDetails(),
                  ),
                );
              },
              child: Text(
                'الاطلاع علي تفاصيل الطلب',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );

    childrens.add(
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            '04:55 pm',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          Text(
            '21/12/2019',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          Text(
            'تمت الموافقة من قبل العميل',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: purpleColor,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(4),
          ),
          Align(
            alignment: Alignment.center,
            child: RaisedButton(
              color: purpleColor,
              onPressed: () {},
              child: Text(
                'حمل الاوراق المطلوبة',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );

    childrens.add(
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            '04:55 pm',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          Text(
            '21/12/2019',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          Text(
            'ابدا بالمهمة',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: purpleColor,
              fontSize: 15,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(10),
                  vertical: ScreenUtil().setHeight(5),
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: purpleColor,
                    width: 1,
                  ),
                ),
                child: Text(
                  '4  ايام',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: purpleColor,
                  ),
                ),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(6),
              ),
              Text(
                'الوقت المحدد لتنفيذك تلك المهمة',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: purpleColor,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );

    return childrens;
  }
}
