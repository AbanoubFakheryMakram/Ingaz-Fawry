import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: sideMenu(context),
      ),
      appBar: appBar(
        context: context,
        title: 'الحساب الشخصي',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
            ScreenUtil().setHeight(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'بيانات المستخدم',
                    style: TextStyle(
                      color: purpleColor,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(7),
                  ),
                  Icon(
                    Icons.person,
                    color: purpleColor,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: ScreenUtil().setHeight(3),
                ),
                color: Color(0xffF2EFEA),
                width: double.infinity,
                padding: EdgeInsets.all(
                  ScreenUtil().setHeight(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'اسم المستخدم',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      '+996 151 54 151',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      'user@lourmipsun',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'الطلبات',
                    style: TextStyle(
                      color: purpleColor,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(7),
                  ),
                  Icon(
                    Icons.storage,
                    color: purpleColor,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: ScreenUtil().setHeight(3),
                ),
                color: Color(0xffF2EFEA),
                width: double.infinity,
                padding: EdgeInsets.all(
                  ScreenUtil().setHeight(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'الطلبات المنتهية: 10',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      'الطلبات المفتوحة: 1',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      'الطلبات الملغاه: 0',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'التقييمات',
                    style: TextStyle(
                      color: purpleColor,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(7),
                  ),
                  Icon(
                    Icons.star,
                    color: purpleColor,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: ScreenUtil().setHeight(3),
                ),
                color: Color(0xffF2EFEA),
                width: double.infinity,
                padding: EdgeInsets.all(
                  ScreenUtil().setHeight(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: ScreenUtil().setHeight(90),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
