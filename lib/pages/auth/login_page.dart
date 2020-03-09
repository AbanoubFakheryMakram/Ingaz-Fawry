import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ingaz_fawry/pages/auth/register_new_user.dart';
import 'package:ingaz_fawry/pages/home/home_page.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/buttons.dart';
import 'package:ingaz_fawry/widgets/page_down_decoration.dart';
import 'package:ingaz_fawry/widgets/text_form_field.dart';

class LoginPage extends StatefulWidget {

  final String type;

  const LoginPage({Key key, this.type}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            Image.asset(
              'assets/images/logo.png',
            ),
            textFormField(
                label: 'اسم المستخدم',
                hint: 'ادخل الايميل الخاص بك',
                keyboardType: TextInputType.emailAddress,
                height: ScreenUtil().setHeight(25)),
            SizedBox(
              height: ScreenUtil().setHeight(6),
            ),
            textFormField(
                label: 'الرقم السري',
                hint: 'ادخل الرقم السري الخاص بك',
                keyboardType: TextInputType.text,
                height: ScreenUtil().setHeight(25)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(28),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'نسيت كلمة السر',
                    style: textStyle.copyWith(
                      color: greenColor,
                      fontSize: 13,
                      decoration: TextDecoration.underline,
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
                          'تذكرني',
                          style: textStyle.copyWith(
                            color: greenColor,
                            fontSize: 13,
                            decoration: TextDecoration.underline,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        value: rememberMe,
                        onChanged: (val) {
                          setState(
                            () {
                              rememberMe = val;
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
              height: ScreenUtil().setHeight(10),
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
                'دخول',
                textAlign: TextAlign.center,
                style: textStyle.copyWith(fontSize: 14),
              ),
              color: purpleColor,
            ),
            SizedBox(
              height: ScreenUtil().setHeight(5),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => RegisterNewUser(),
                ),
              ),
              child: Text(
                'ليس لديك حساب بعد؟',
                style: textStyle.copyWith(
                  color: greenColor,
                ),
              ),
            ),
            pageDownDecoration(
              firstDecorHeight: ScreenUtil().setHeight(90),
              sceondDecoreHeight: ScreenUtil().setHeight(50)
            ),
          ],
        ),
      ),
    );
  }
}
