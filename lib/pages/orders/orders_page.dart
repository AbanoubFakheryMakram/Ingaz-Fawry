import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(7),
                  ),
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
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(7),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff562485),
                    border: Border.all(
                      color: Color(0xff562485),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'الطلبات المفتوحه',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(7),
                  ),
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
                      textAlign: TextAlign.center,
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
        bottomNavigationBar: bottomBar(
          isContact: false,
          isFollowers: false,
          isHome: false,
          isOrders: true,
          context: context,
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.red,
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
}
