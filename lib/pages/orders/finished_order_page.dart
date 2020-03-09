import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ingaz_fawry/pages/notifications/order_status_report.dart';
import 'package:ingaz_fawry/pages/orders/orders_page.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';

class FinishedOrderPage extends StatefulWidget {
  @override
  _FinishedOrderPageState createState() => _FinishedOrderPageState();
}

class _FinishedOrderPageState extends State<FinishedOrderPage> {
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
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => OrdersPage(),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 36,
        ),
      ),
      bottomNavigationBar: bottomBar(
        context: context,
        isContact: false,
        isFollowers: true,
        isHome: false,
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
                    style: textStyle.copyWith(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'اريد ان اجدد اقامتي باسرع طريقة ممكنة معي كل الاوراق المطلوبة',
                    textAlign: TextAlign.right,
                    style: textStyle.copyWith(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(8),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: buildIndicators(
                            indicatorsNumber: stepsContent(context).length,
                            indicatorsColor: purpleColor,
                            pathColor: purpleColor,
                            children: stepsContent(context),
                            pathWidth: ScreenUtil().setWidth(2),
                            hasFinalIndicator: true,
                            lastIndicatorColor: greenColor,
                            indicatorSize: ScreenUtil().setHeight(10),
                            pathHeight: ScreenUtil().setHeight(75),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(40),
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
            'تم تاكيد الطلب في انتظار الموافقة',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: purpleColor,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(4),
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
            'تمت الموافقة وتم ارسال الفاتورة',
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
                    builder: (_) => OrderStatusReport(),
                  ),
                );
              },
              child: Text(
                'تفقد الفاتورة',
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
            'جاري تنفيذ معاملتك',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: purpleColor,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(4),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(4),
                ),
                width: ScreenUtil().setWidth(50),
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
                width: ScreenUtil().setWidth(22),
              ),
              Text(
                'الوقت التقديري لتنفيذ معاملتك هو',
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
            'تم الانتهاء من المعاملة',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: purpleColor,
              fontSize: 15,
            ),
          ),
          Text(
            'تقييم المعقب',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: greenColor,
              fontSize: 12,
            ),
          ),
          Center(
            child: RatingBar(
              initialRating: 5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              glow: true,
              glowColor: Colors.amber,
              glowRadius: 10,
              maxRating: 5,
              itemSize: 15,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
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
    );

    return childrens;
  }
}
