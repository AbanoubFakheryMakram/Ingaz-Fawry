import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ingaz_fawry/pages/notifications/order_status_report.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';

class UnclickedNotification extends StatefulWidget {
  @override
  _UnclickedNotificationState createState() => _UnclickedNotificationState();
}

class _UnclickedNotificationState extends State<UnclickedNotification> {
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
                mainAxisAlignment: MainAxisAlignment.start,
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
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: buildIndicators(
                      indicatorsNumber: stepContents().length,
                      indicatorsColor: purpleColor,
                      pathColor: purpleColor,
                      pathHeight: ScreenUtil().setHeight(95),
                      hasFinalIndicator: true,
                      pathWidth: ScreenUtil().setWidth(2),
                      lastIndicatorColor: greenColor,
                      indicatorSize: ScreenUtil().setWidth(20),
                      children: stepContents(),
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

  List<Widget> stepContents() {
    List<Widget> children = [];
    children.add(
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
            'تم تقديم الطلب في انتظار الموافقة',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: purpleColor,
              fontSize: 14,
            ),
          ),
          Text(
            'نقوم الان بالبحث عن افضل واسرع طريقة لانجاز معاملتك',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: purpleColor,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );

    children.add(
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
            'تمت الموافقة وتم تحديد المبلغ المستحق',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: purpleColor,
              fontSize: 14,
            ),
          ),
          Text(
            'تفقد الطلب وقم بالتحويل المالي للمتابعة',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: purpleColor,
              fontSize: 10,
            ),
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
                'تفقد تقرير حالة الطلب',
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

    children.add(
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
            'تم تاكيد التحويل البنكي لرسوم الخدمة',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: purpleColor,
              fontSize: 15,
            ),
          ),
          Text(
            'الان استرح سنقوم بكل الاعمال المطلوبة',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: purpleColor,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );

    children.add(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: ScreenUtil().setWidth(65),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: purpleColor,
                  ),
                ),
                child: Center(
                  child: Text(
                    '4  ايام',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: purpleColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(18),
              ),
              Text(
                'الوقت التقديري لتنقيذ معاملتك هو',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: purpleColor,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );

    children.add(
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
            'تم الانتهاء من المعاملة وارسال الفاتورة',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: greenColor,
              fontSize: 15,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'تفقد الفاتورة',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: purpleColor,
                decoration: TextDecoration.underline,
                fontSize: 12,
              ),
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

    return children;
  }
}
