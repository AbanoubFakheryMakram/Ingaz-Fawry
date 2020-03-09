import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ingaz_fawry/pages/home/home_page.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/buttons.dart';
import 'package:ingaz_fawry/widgets/text_form_field.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';

import 'login_page.dart';

class RegisterNewOffice extends StatefulWidget {
  @override
  _RegisterNewOfficeState createState() => _RegisterNewOfficeState();
}

class _RegisterNewOfficeState extends State<RegisterNewOffice> {
  String trackingField = 'item1';
  bool readTheInstructions = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/logo.png',
                  width: ScreenUtil().setHeight(250),
                ),
                Text(
                  'تسجيل معقب/مكتب جديد',
                  style: textStyle.copyWith(
                    color: purpleColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(8),
                ),
                textFormField(
                  label: 'الاسم',
                  hint: 'ادخل الاسم',
                  lableFontSize: 16,
                  keyboardType: TextInputType.text,
                  height: ScreenUtil().setHeight(25),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(8),
                ),
                textFormField(
                  label: 'الجوال',
                  hint: 'ادخل الجوال الخاص بك',
                  lableFontSize: 16,
                  keyboardType: TextInputType.phone,
                  height: ScreenUtil().setHeight(25),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(8),
                ),
                trackingFeild(
                  label: 'مجال التعقيب الخاص بك',
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: trackingField,
                      hint: Text(
                        'اختر من المجالات',
                        textAlign: TextAlign.right,
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
                            trackingField = item;
                          },
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(8),
                ),
                trackingFeild(
                  label: 'اوراق الثبوتيه',
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
                  height: ScreenUtil().setHeight(8),
                ),
                textFormField(
                  label: 'الايميل',
                  hint: 'ادخل الايميل الخاص بك',
                  lableFontSize: 16,
                  keyboardType: TextInputType.emailAddress,
                  height: ScreenUtil().setHeight(25),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(8),
                ),
                textFormField(
                  label: 'الرقم السري',
                  hint: 'ادخل الرقم السري الخاص بك',
                  lableFontSize: 16,
                  keyboardType: TextInputType.text,
                  height: ScreenUtil().setHeight(25),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(8),
                ),
                textFormField(
                  label: 'اعد كتابة الرقم السري',
                  hint: 'اعد كتابة الرقم السري الخاص بك',
                  lableFontSize: 16,
                  keyboardType: TextInputType.text,
                  height: ScreenUtil().setHeight(25),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(28),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => LoginPage(
                              type: 'office',
                            ),
                          ),
                        ),
                        child: Text(
                          'لديك حساب؟',
                          style: textStyle.copyWith(
                            color: greenColor,
                            fontSize: 12,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Theme(
                          data: Theme.of(context).copyWith(
                            unselectedWidgetColor: greenColor,
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                          ),
                          child: CheckboxListTile(
                            checkColor: Colors.white,
                            activeColor: greenColor,
                            title: Text(
                              'قرات واوافق علي شروط الخدمة',
                              style: textStyle.copyWith(
                                color: greenColor,
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.right,
                            ),
                            value: readTheInstructions,
                            onChanged: (val) {
                              setState(
                                () {
                                  readTheInstructions = val;
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(8),
                ),
                TheButton(
                  ontap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => HomePage(),
                      ),
                    );
                  },
                  verticalMargin: 5,
                  child: Text(
                    'تسجيل',
                    textAlign: TextAlign.center,
                    style: textStyle.copyWith(fontSize: 14),
                  ),
                  color: purpleColor,
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
