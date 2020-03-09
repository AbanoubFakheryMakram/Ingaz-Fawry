import 'package:flutter/material.dart';
import 'package:ingaz_fawry/pages/followers/followers.dart';
import 'package:ingaz_fawry/pages/followers/followers_widgets.dart';
import 'package:ingaz_fawry/pages/notifications/notification_page.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';

class FollowersPage extends StatefulWidget {
  @override
  _FollowersPageState createState() => _FollowersPageState();
}

class _FollowersPageState extends State<FollowersPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
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
          tabBar: followerTabBar(),
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
          isFollowers: true,
          isHome: false,
          isOrders: false,
        ),
        body: TabBarView(
          children: [
            Followers(),
            Followers(),
          ],
        ),
      ),
    );
  }
}
