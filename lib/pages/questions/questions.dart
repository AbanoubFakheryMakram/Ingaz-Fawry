import 'package:flutter/material.dart';
import 'package:ingaz_fawry/pages/notifications/notification_page.dart';
import 'package:ingaz_fawry/pages/questions/questions_widget.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';

class QuestionsPage extends StatefulWidget {
  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: sideMenu(context),
      ),
      appBar: appBar(
        context: context,
        title: 'الاسئلة الشائعة',
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => NotificationPage(),
            ),
          );
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
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return QuestionItem();
        },
      ),
    );
  }
}
