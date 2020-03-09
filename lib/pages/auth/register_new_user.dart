import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ingaz_fawry/pages/home/home_page.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/buttons.dart';
import 'package:ingaz_fawry/widgets/text_form_field.dart';

import 'login_page.dart';

class RegisterNewUser extends StatefulWidget {
  @override
  _RegisterNewUserState createState() => _RegisterNewUserState();
}

class _RegisterNewUserState extends State<RegisterNewUser> {
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
                Hero(
                  tag: 'heroLogoImage',
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: ScreenUtil().setHeight(250),
                  ),
                ),
                Text(
                  'تسجيل مستخدم جديد',
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
                            builder: (_) => LoginPage(type: 'user',),
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
                  verticalMargin: 5,
                  ontap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => HomePage(),
                      ),
                    );
                  },
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
