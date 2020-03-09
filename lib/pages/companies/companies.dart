import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ingaz_fawry/pages/notifications/notification_page.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/buttons.dart';
import 'package:ingaz_fawry/widgets/text_form_field.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';

class CompaniesPage extends StatefulWidget {
  @override
  _CompaniesPageState createState() => _CompaniesPageState();
}

class _CompaniesPageState extends State<CompaniesPage> {
  String location = 'اختر المحافظة';
  String service = 'حدد انواع الخدمات المطلوبة';
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: sideMenu(context),
      ),
      appBar: appBar(
        context: context,
        title: 'شركات',
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
                  'تلك الخدمة مقدمة الي الشركات/المؤسسات',
                  style: TextStyle(
                    color: purpleColor,
                  ),
                ),
              ),
              Text(
                'لم تدرس النصوص العربية (عند القدماء) دراسة مستقلة بل كانت هذه الدراسة وغيرهاوصرفاً ودلالةً فقط، بل يهتم أن ينفذ ما يكون وراء النص من جميع العوامل المعرفية والنفسية والاجتماعية',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: purpleColor,
                  fontSize: 10,
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
                    items: <String>[
                      'item1',
                      'item2',
                      'item3',
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
              textFormField(
                label: 'نوع نشاط اشركة/المؤسسة',
                hint: 'مثال/ شركة ادوية',
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
                label: 'الخدمات المطلوبة',
                width: ScreenUtil.screenWidth,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: Text(
                      '$service',
                      textAlign: TextAlign.right,
                    ),
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    items: <String>[
                      'item1',
                      'item2',
                      'item3',
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
                          service = item;
                        },
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(17),
              ),
              Center(
                child: TheButton(
                  ontap: () {
                    showSubmitDialog(context);
                  },
                  child: Text(
                    'تقديم الطلب',
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
