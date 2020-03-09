import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/buttons.dart';
import 'package:ingaz_fawry/widgets/page_down_decoration.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';

class OrderStatusReport extends StatefulWidget {
  @override
  _OrderStatusReportState createState() => _OrderStatusReportState();
}

class _OrderStatusReportState extends State<OrderStatusReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: sideMenu(context),
      ),
      appBar: appBar(
        context: context,
        icon: Icons.keyboard_arrow_left,
        title: 'تقرير حالة الطلب',
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
      body: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            child: Container(
              width: ScreenUtil.screenWidth / 2,
              child: pageDownDecoration(
                firstDecorHeight: ScreenUtil().setHeight(90),
                sceondDecoreHeight: ScreenUtil().setHeight(50),
              ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  left: ScreenUtil().setHeight(16),
                  right: ScreenUtil().setHeight(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'الاسم: اسم المستخدم',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: purpleColor,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'حالة الطلب: جديد',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: purpleColor,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'الجوال: 1551 15 151',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: purpleColor,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'جهة المعاملة: دائرة الجوازات',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: purpleColor,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(3),
                    ),
                    Text(
                      'تفاصيل المعاملة',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: purpleColor,
                        fontSize: 14,
                      ),
                    ),
                    AutoSizeText(
                      'دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات',
                      textAlign: TextAlign.right,
                      style: textStyle.copyWith(
                        color: purpleColor,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(8),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'الميزانيه: 500 رس',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: purpleColor,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'الخدمة المطلوبة: تجديد الاقامة',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: purpleColor,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    _table(),
                    SizedBox(
                      height: ScreenUtil().setHeight(10),
                    ),
                    _muchMoney(),
                    SizedBox(
                      height: ScreenUtil().setHeight(5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TheButton(
                          color: Colors.red,
                          width: ScreenUtil().setWidth(120),
                          ontap: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'رفض',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TheButton(
                          color: greenColor,
                          ontap: () {
                            Navigator.of(context).pop();
                          },
                          width: ScreenUtil().setWidth(120),
                          child: Text(
                            'قبول',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'لوريم ابسوس',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: purpleColor,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'في حالة قبول العرض الرجاء القيام بالتحويل البنكي وارسال صورة من ايصال التحويل علي', // info@engazfawry.com
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: purpleColor,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(160),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _muchMoney() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: ScreenUtil().setWidth(110),
          padding: EdgeInsets.all(
            ScreenUtil().setHeight(5),
          ),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: purpleColor,
            ),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'رس',
                  style: TextStyle(
                    color: purpleColor,
                    fontSize: 12,
                  ),
                ),
                Text(
                  '10,000',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: purpleColor,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: ScreenUtil().setWidth(110),
          padding: EdgeInsets.all(
            ScreenUtil().setHeight(5),
          ),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: purpleColor,
            ),
          ),
          child: Center(
            child: Text(
              'المبلغ المستحق',
              style: TextStyle(
                color: purpleColor,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _table() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: greenColor,
          width: 1,
        ),
      ),
      child: Column(
        children: <Widget>[
          Text(
            'تقرير انجاز فوري',
            style: TextStyle(
              color: greenColor,
            ),
          ),
          Container(
            color: greenColor,
            padding: EdgeInsets.all(
              ScreenUtil().setHeight(9),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '800 رس',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'لوريم ابسوم',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'ايام عمل',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  height: ScreenUtil().setHeight(50),
                  color: Colors.white,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'تكلفة انجاز المعاملة',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'متطلبات انجاز المعاملة',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'عدد الايام',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
