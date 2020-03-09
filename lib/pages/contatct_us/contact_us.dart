import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ingaz_fawry/pages/notifications/notification_widget.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/buttons.dart';
import 'package:ingaz_fawry/widgets/text_form_field.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: sideMenu(context),
      ),
      appBar: appBar(
        context: context,
        title: 'للتواصل',
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
        isContact: true,
        isFollowers: false,
        isHome: false,
        isOrders: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: ScreenUtil().setHeight(16),
            right: ScreenUtil().setHeight(16),
            bottom: ScreenUtil().setHeight(16),
            top: ScreenUtil().setHeight(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/location_img.png',
                fit: BoxFit.cover,
                height: ScreenUtil().setHeight(110),
                width: double.infinity,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'لوريم ابسوم',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Icon(
                    Icons.location_on,
                    size: 16,
                    color: purpleColor,
                  ),
                  Text(
                    'لوريم ابسوم',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Icon(
                    FontAwesomeIcons.at,
                    size: 16,
                    color: purpleColor,
                  ),
                  Text(
                    'لوريم ابسوم',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Icon(
                    Icons.phone,
                    size: 16,
                    color: purpleColor,
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.instagram,
                    size: 16,
                    color: purpleColor,
                  ),
                  SizedBox(
                    width: ScreenUtil().setHeight(4),
                  ),
                  Icon(
                    FontAwesomeIcons.facebook,
                    size: 16,
                    color: purpleColor,
                  ),
                  SizedBox(
                    width: ScreenUtil().setHeight(4),
                  ),
                  Icon(
                    FontAwesomeIcons.twitter,
                    size: 16,
                    color: purpleColor,
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8),
              ),
              textFormField(
                label: 'الاسم',
                hint: 'اكتب الاسم',
                keyboardType: TextInputType.text,
                lableFontSize: 14,
                height: ScreenUtil().setHeight(25),
                horizontalPadding: ScreenUtil().setWidth(0),
                hintTextStyle: TextStyle(
                  fontSize: 10,
                  color: purpleColor,
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8),
              ),
              textFormField(
                label: 'البريد الالكتروني',
                hint: 'اكتب بريدك الالكتروني',
                keyboardType: TextInputType.emailAddress,
                lableFontSize: 14,
                horizontalPadding: ScreenUtil().setWidth(0),
                height: ScreenUtil().setHeight(25),
                hintTextStyle: TextStyle(
                  fontSize: 10,
                  color: purpleColor,
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8),
              ),
              textFormField(
                label: 'الشركة',
                hint: 'اكتب اسم الشركة ان وجد',
                keyboardType: TextInputType.text,
                lableFontSize: 14,
                horizontalPadding: ScreenUtil().setWidth(0),
                height: ScreenUtil().setHeight(25),
                hintTextStyle: TextStyle(
                  fontSize: 10,
                  color: purpleColor,
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8),
              ),
              textFormField(
                label: 'رسالتك/استفسارك عن الخدمة',
                hint: 'اكتب رسالتك/استفسارك',
                keyboardType: TextInputType.multiline,
                lableFontSize: 14,
                height: ScreenUtil().setHeight(50),
                horizontalPadding: ScreenUtil().setWidth(0),
                hintTextStyle: TextStyle(
                  fontSize: 10,
                  color: purpleColor,
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(14),
              ),
              TheButton(
                child: Text(
                  'ارسال',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: purpleColor,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
