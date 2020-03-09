import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ingaz_fawry/pages/notifications/notification_page.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/buttons.dart';
import 'package:ingaz_fawry/widgets/text_form_field.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';
import 'package:intl/intl.dart';

class TransactionsPage extends StatefulWidget {
  @override
  _TransactionsPageState createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  String transactionDest = 'اختر جهة المعاملة';
  String skills = 'اختر المهارة';
  String location = 'اختر المحافظة';
  int money = 00000;
  bool isChecked = false;

  final formatter = new NumberFormat("##,###");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: sideMenu(context),
      ),
      appBar: appBar(
        context: context,
        title: 'المعاملات',
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => NotificationPage(),
            ),
          );
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: ScreenUtil().setWidth(18),
            right: ScreenUtil().setWidth(18),
            bottom: ScreenUtil().setWidth(18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Center(
                child: Text(
                  'تسجيل معاملة جديدة',
                  style: TextStyle(
                    color: purpleColor,
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(15),
              ),
              trackingFeild(
                label: 'جهة المعاملة',
                width: ScreenUtil.screenWidth,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: Text(
                      '$transactionDest',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    items: <String>['item1', 'item2', 'item3', 'item4']
                        .map<DropdownMenuItem<String>>(
                      (String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      },
                    ).toList(),
                    onChanged: (item) {
                      setState(
                        () {
                          transactionDest = item;
                        },
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(7),
              ),
              textFormField(
                label: 'موضوع معاملتك',
                hint: 'اكتب نوع المعاملة',
                keyboardType: TextInputType.multiline,
                horizontalPadding: ScreenUtil().setWidth(5),
                height: ScreenUtil().setHeight(25),
                hintTextStyle: TextStyle(
                  color: purpleColor,
                  fontSize: 11,
                ),
                width: ScreenUtil.screenWidth,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(7),
              ),
              textFormField(
                label: 'اشرح معاملتك',
                hint: 'مثال: اريد ان اقوم بتحديد رخصة القيادة',
                hintTextStyle: TextStyle(
                  color: purpleColor,
                  fontSize: 11,
                ),
                keyboardType: TextInputType.multiline,
                horizontalPadding: ScreenUtil().setWidth(5),
                height: ScreenUtil().setHeight(25),
                width: ScreenUtil.screenWidth,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(7),
              ),
              trackingFeild(
                label: 'المرفقات',
                width: ScreenUtil.screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.plusCircle,
                      size: 16,
                      color: purpleColor,
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(8),
                    ),
                    Text(
                      'تحميل الملفات',
                      style: textStyle.copyWith(
                        color: purpleColor,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(7),
              ),
              trackingFeild(
                label: 'المهارات التي تحبث عنها؟',
                width: ScreenUtil.screenWidth,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: Text(
                      '$skills',
                      textAlign: TextAlign.right,
                    ),
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    items: <String>['item1', 'item2', 'item3', 'item4']
                        .map<DropdownMenuItem<String>>(
                      (String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      },
                    ).toList(),
                    onChanged: (item) {
                      setState(
                        () {
                          skills = item;
                        },
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(7),
              ),
              trackingFeild(
                label: 'ميزانية المعاملة',
                width: ScreenUtil.screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_upward),
                      onPressed: () {
                        money += 1000;
                        setState(() {});
                      },
                    ),
                    Text(
                      formatter.format(money),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_downward),
                      onPressed: () {
                        money <= 0 ? money = 0 : money -= 1000;
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(7),
              ),
              trackingFeild(
                label: 'الموقع',
                width: ScreenUtil.screenWidth,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: Text(
                      '$location',
                      textAlign: TextAlign.right,
                    ),
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    items: <String>['item1', 'item2', 'item3', 'item4']
                        .map<DropdownMenuItem<String>>(
                      (String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      },
                    ).toList(),
                    onChanged: (item) {
                      setState(
                        () {
                          location = item;
                        },
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(7),
              ),
              Theme(
                data: Theme.of(context).copyWith(
                  unselectedWidgetColor: greenColor,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                ),
                child: CheckboxListTile(
                  value: isChecked,
                  checkColor: Colors.white,
                  activeColor: greenColor,
                  dense: true,
                  title: Text(
                    'قرات واوافق علي شروط الخدمة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 10,
                      color: greenColor,
                    ),
                  ),
                  onChanged: (val) {
                    isChecked = val;
                    setState(() {});
                  },
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4),
              ),
              Center(
                child: TheButton(
                  ontap: () {
                    showSubmitDialog(context);
                  },
                  child: Text(
                    'طلب تعميد',
                    style: textStyle,
                  ),
                  color: purpleColor,
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
