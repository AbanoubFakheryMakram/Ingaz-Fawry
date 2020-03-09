import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ingaz_fawry/pages/home/home_page.dart';
import 'package:ingaz_fawry/pages/home/home_widget.dart';
import 'package:ingaz_fawry/pages/notifications/notification_page.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';

import 'order_widget.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 3,
      child: Scaffold(
        endDrawer: Drawer(
          child: sideMenu(context),
        ),
        appBar: appBar(
          context: context,
          title: 'الطلبات',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => NotificationPage(),
              ),
            );
          },
          tabBar: TabBar(
            indicatorColor: Colors.transparent,
            labelColor: Colors.white,
            labelPadding: EdgeInsets.all(0),
            unselectedLabelColor: purpleColor,
            indicatorPadding: EdgeInsets.all(0),
            isScrollable: true,
            tabs: [
              Tab(
                child: Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  decoration: BoxDecoration(
                    color: Color(0xff562485),
                    border: Border.all(
                      color: Color(0xff562485),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'الطلبات الملغاه',
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  decoration: BoxDecoration(
                    color: Color(0xff562485),
                    border: Border.all(
                      color: Color(0xff562485),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'الطلبات المغتوحه',
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  decoration: BoxDecoration(
                    color: Color(0xff562485),
                    border: Border.all(
                      color: Color(0xff562485),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'الطلبات المنتهية',
                    ),
                  ),
                ),
              ),
            ],
          ),
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
        bottomNavigationBar: bottomBar(),
        body: TabBarView(
          children: [
            Container(
              color: greenColor,
            ),
            Container(
              color: purpleColor,
            ),
            ListView(
              children: <Widget>[
                orderItem(context),
                orderItem(context),
                orderItem(context),
                orderItem(context),
                orderItem(context),
                orderItem(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomBar({int index}) {
    return BottomAppBar(
      elevation: 0,
      color: purpleColor,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            bottomBarIcon(
              icon: FontAwesomeIcons.solidQuestionCircle,
              isSelected: false,
            ),
            bottomBarIcon(
              icon: Icons.business_center,
              isSelected: false,
            ),
            SizedBox(
              width: ScreenUtil().setWidth(70),
            ),
            bottomBarIcon(
              icon: Icons.storage,
              isSelected: true,
            ),
            bottomBarIcon(
              icon: Icons.home,
              isSelected: false,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => HomePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
