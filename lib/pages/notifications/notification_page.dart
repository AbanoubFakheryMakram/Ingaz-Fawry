import 'package:flutter/material.dart';
import 'package:ingaz_fawry/pages/notifications/clicked_notification.dart';
import 'package:ingaz_fawry/pages/notifications/unclicked_notification.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';

import 'accept_notification_offer.dart';
import 'notification_widget.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: sideMenu(context),
      ),
      appBar: appBar(
        context: context,
        title: 'الاشعارات',
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
      body: notificationsList(context: context),
    );
  }

  Widget notificationsList({bool isClicked, @required BuildContext context}) {
    return ListView(
      children: <Widget>[
        notificationCard(
          isClicked: true,
          isNewOver: false,
          state: 'لقد وافق العميل علي عرضك تابع حالة الطلب',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ClickedNotification(),
              ),
            );
          },
        ),
        notificationCard(
          isClicked: false,
          isNewOver: false,
          state: 'تمت الموافقة علي طلب المعاملة الخاص بكم',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => UnclickedNotification(),
              ),
            );
          },
        ),
        notificationCard(
          isClicked: false,
          isNewOver: false,
          state: 'تمت الموافقة علي طلب المعاملة الخاص بكم',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => UnclickedNotification(),
              ),
            );
          },
        ),
        notificationCard(
          isClicked: false,
          isNewOver: true,
          state: 'لقد اوكلت اليك مهمة قدم عرضك لتحصل عليه',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => AcceptNotificationOffer(),
              ),
            );
          },
        ),
      ],
    );
  }
}
