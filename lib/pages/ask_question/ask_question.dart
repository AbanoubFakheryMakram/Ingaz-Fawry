import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ingaz_fawry/pages/notifications/notification_page.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/buttons.dart';
import 'package:ingaz_fawry/widgets/text_form_field.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';

class AskQuestionPage extends StatefulWidget {
  @override
  _AskQuestionPageState createState() => _AskQuestionPageState();
}

class _AskQuestionPageState extends State<AskQuestionPage> {
  String paymentType = 'تحويل بنكي';
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: sideMenu(context),
      ),
      appBar: appBar(
        context: context,
        title: 'استفسار مدفوع',
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
                  'يمكنك الاستفسار الان',
                  style: TextStyle(
                    color: purpleColor,
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(15),
              ),
              textFormField(
                label: 'الاسم',
                hint: 'ادخل الاسم',
                keyboardType: TextInputType.text,
                horizontalPadding: ScreenUtil().setWidth(5),
                contentHorizontalPadding: 7,
                hintTextStyle: TextStyle(
                  fontSize: 10,
                  color: purpleColor,
                ),
                height: ScreenUtil().setHeight(25),
                width: ScreenUtil.screenWidth,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(7),
              ),
              textFormField(
                label: 'الجوال',
                hint: 'ادخل الجوال الخاص بك',
                keyboardType: TextInputType.phone,
                horizontalPadding: ScreenUtil().setWidth(5),
                contentHorizontalPadding: 7,
                hintTextStyle: TextStyle(
                  fontSize: 10,
                  color: purpleColor,
                ),
                height: ScreenUtil().setHeight(25),
                width: ScreenUtil.screenWidth,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(7),
              ),
              textFormField(
                label: 'نوع الاستفسار',
                hint: 'اكتب نوع الاستفسار',
                keyboardType: TextInputType.text,
                horizontalPadding: ScreenUtil().setWidth(5),
                contentHorizontalPadding: 7,
                hintTextStyle: TextStyle(
                  fontSize: 10,
                  color: purpleColor,
                ),
                height: ScreenUtil().setHeight(25),
                width: ScreenUtil.screenWidth,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(7),
              ),
              textFormField(
                label: 'اشرح تفاصيل استفسارك',
                hint: 'مثال: اريد ان اقوم بتجديد رخصة القيادة',
                keyboardType: TextInputType.text,
                horizontalPadding: ScreenUtil().setWidth(5),
                contentHorizontalPadding: 7,
                hintTextStyle: TextStyle(
                  fontSize: 10,
                  color: purpleColor,
                ),
                height: ScreenUtil().setHeight(25),
                width: ScreenUtil.screenWidth,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(7),
              ),
              trackingFeild(
                label: 'طريقة الدفع',
                width: ScreenUtil.screenWidth,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: Text(
                      '$paymentType',
                      textAlign: TextAlign.right,
                    ),
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    items: <String>[
                      'تحويل بنكي',
                      'تحويل بنكي',
                      'تحويل بنكي',
                    ].map<DropdownMenuItem<String>>(
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
                          paymentType = item;
                        },
                      );
                    },
                  ),
                ),
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
                    'طلب استفسار',
                    style: textStyle,
                  ),
                  color: purpleColor,
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
