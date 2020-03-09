import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ingaz_fawry/pages/auth/register_new_office.dart';
import 'package:ingaz_fawry/pages/auth/register_new_user.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/buttons.dart';
import 'package:ingaz_fawry/widgets/page_down_decoration.dart';

import 'login_page.dart';

class LoginOrRegisterPage extends StatefulWidget {
  final String type;

  const LoginOrRegisterPage({Key key, this.type}) : super(key: key);

  @override
  _LoginOrRegisterPageState createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: 'heroLogoImage',
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setHeight(28),
              ),
            ),
            TheButton(
              verticalMargin: 10,
              ontap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (_) => LoginPage(),
                ),
              ),
              width: ScreenUtil.screenWidth / 3,
              child: Text(
                'دخول',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              color: purpleColor,
            ),
            TheButton(
              verticalMargin: 10,
              width: ScreenUtil.screenWidth / 3,
              ontap: () {
                switch (widget.type) {
                  case 'office':
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => RegisterNewOffice(),
                      ),
                    );
                    break;
                  case 'user':
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => RegisterNewUser(),
                      ),
                    );
                    break;
                  default:
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => RegisterNewUser(),
                      ),
                    );
                }
              },
              child: Text(
                'تسجيل',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              color: purpleColor,
            ),
            pageDownDecoration(
              firstDecorHeight: ScreenUtil().setHeight(90),
              sceondDecoreHeight: ScreenUtil().setHeight(50),
            ),
          ],
        ),
      ),
    );
  }
}
