import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ingaz_fawry/pages/about/about_company.dart';
import 'package:ingaz_fawry/pages/accreditation/accreditation.dart';
import 'package:ingaz_fawry/pages/ask_question/ask_question.dart';
import 'package:ingaz_fawry/pages/auth/login_register_page.dart';
import 'package:ingaz_fawry/pages/companies/companies.dart';
import 'package:ingaz_fawry/pages/contatct_us/contact_us.dart';
import 'package:ingaz_fawry/pages/followers/followers_page.dart';
import 'package:ingaz_fawry/pages/home/home_page.dart';
import 'package:ingaz_fawry/pages/home/home_widget.dart';
import 'package:ingaz_fawry/pages/orders/orders_page.dart';
import 'package:ingaz_fawry/pages/profile/personal_profile.dart';
import 'package:ingaz_fawry/pages/questions/questions.dart';
import 'package:ingaz_fawry/pages/transactions/transactions.dart';
import 'package:ingaz_fawry/utils/clippers_paintes/my_clipper.dart';
import 'package:ingaz_fawry/utils/clippers_paintes/small_container_app_bar_clipper.dart';
import 'package:ingaz_fawry/utils/clippers_paintes/text_input_feild_painter.dart';
import 'package:ingaz_fawry/utils/const.dart';

Widget sideMenu(BuildContext context) {
  return (Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      SizedBox(
        height: ScreenUtil.statusBarHeight + ScreenUtil.bottomBarHeight,
      ),
      IconButton(
        icon: Icon(
          Icons.clear_all,
          color: greenColor,
          size: 28,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      ListTile(
        onTap: () {
          Navigator.of(context).pop();
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => Profile(),
            ),
          );
        },
        title: Text(
          'الحساب الشخصي',
          textAlign: TextAlign.right,
          style: textStyle.copyWith(
            fontSize: 16,
            color: purpleColor,
          ),
        ),
        trailing: Icon(
          Icons.person,
          color: purpleColor,
        ),
      ),
      ListTile(
        onTap: () {
          Navigator.of(context).pop();
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => OrdersPage(),
            ),
          );
        },
        title: Text(
          'الطلبات',
          textAlign: TextAlign.right,
          style: textStyle.copyWith(
            fontSize: 16,
            color: purpleColor,
          ),
        ),
        trailing: Icon(
          Icons.storage,
          color: purpleColor,
        ),
      ),
      ListTile(
        onTap: () {
          Navigator.of(context).pop();
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => AboutCompany(),
            ),
          );
        },
        title: Text(
          'عن الشركة',
          textAlign: TextAlign.right,
          style: textStyle.copyWith(
            fontSize: 16,
            color: purpleColor,
          ),
        ),
        trailing: Icon(
          FontAwesomeIcons.users,
          color: purpleColor,
        ),
      ),
      ListTile(
        onTap: () {
          Navigator.of(context).pop();
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => QuestionsPage(),
            ),
          );
        },
        title: Text(
          'الاسئلة الشائعة',
          textAlign: TextAlign.right,
          style: textStyle.copyWith(
            fontSize: 16,
            color: purpleColor,
          ),
        ),
        trailing: Icon(
          Icons.question_answer,
          color: purpleColor,
        ),
      ),
      ListTile(
        onTap: () {
          Navigator.of(context).pop();
        },
        title: Text(
          'الاعدادت',
          textAlign: TextAlign.right,
          style: textStyle.copyWith(
            fontSize: 16,
            color: purpleColor,
          ),
        ),
        trailing: Icon(
          Icons.settings,
          color: purpleColor,
        ),
      ),
      ListTile(
        onTap: () {
          Navigator.of(context).pop();
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => LoginOrRegisterPage(),
            ),
          );
        },
        title: Text(
          'تسجيل الخروج',
          textAlign: TextAlign.right,
          style: textStyle.copyWith(
            fontSize: 16,
            color: purpleColor,
          ),
        ),
        trailing: Icon(
          FontAwesomeIcons.signOutAlt,
          color: purpleColor,
        ),
      ),
    ],
  ));
}

Widget bottomPartItem({
  String count,
  String title,
  IconData icon,
}) {
  return Expanded(
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 45,
            color: greenColor,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: count,
              style: textStyle.copyWith(
                color: greenColor,
                fontSize: 15,
              ),
              children: [
                TextSpan(
                  text: title,
                  style: textStyle.copyWith(
                    color: greenColor,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget appBar({
  @required BuildContext context,
  @required Function onTap,
  String title,
  double titleSize = 18,
  IconData icon,
  Color iconColor,
  TabBar tabBar,
}) {
  return AppBar(
    elevation: 0,
    backgroundColor: backgroundColor,
    title: Container(
      height: ScreenUtil().setHeight(40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment(0, .3),
            child: ClipPath(
              clipper: SmallContainerAppBarClipper(),
              child: Container(
                color: purpleColor,
                height: ScreenUtil().setHeight(4),
                width: ScreenUtil().setHeight(6),
              ),
            ),
          ),
          Center(
            child: Text(
              title,
              style: textStyle.copyWith(
                color: purpleColor,
                fontSize: titleSize,
              ),
            ),
          ),
        ],
      ),
    ),
    centerTitle: true,
    leading: icon == null
        ? Container(
            child: Stack(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: iconColor ?? purpleColor,
                  ),
                  onPressed: onTap,
                ),
                Positioned(
                  right: ScreenUtil().setHeight(13),
                  top: ScreenUtil().setHeight(10),
                  child: Container(
                    height: ScreenUtil().setHeight(5),
                    width: ScreenUtil().setHeight(5),
                    decoration: BoxDecoration(
                      color: Color(0xffFC7753),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          )
        : IconButton(
            onPressed: onTap,
            icon: Icon(
              icon,
              color: iconColor ?? purpleColor,
            ),
            iconSize: ScreenUtil().setHeight(25),
          ),
    bottom: tabBar ?? null,
  );
}

List<Widget> buildIndicators({
  @required int indicatorsNumber,
  @required indicatorsColor,
  @required Color pathColor,
  @required List<Widget> children,
  double indicatorSize,
  double pathHeight,
  double pathWidth,
  bool hasFinalIndicator = false,
  BoxShape indicatorShape,
  Color lastIndicatorColor,
  TextAlign align = TextAlign.right,
  BoxDecoration childContainerDecoration,
}) {
  if (children == null) {
    throw Exception(
      'Children must not be null',
    );
  } else if (children.length > indicatorsNumber ||
      children.length < indicatorsNumber) {
    throw Exception(
      'Children length must not be less than or more than indicator numbers',
    );
  } else if (indicatorsNumber < 1) {
    throw Exception(
      'Indicators number should be more than or equal 1 not less,',
    );
  } else {
    List<Widget> steps = [];
    for (int i = 0; i < indicatorsNumber; i++) {
      if (hasFinalIndicator && i == (indicatorsNumber - 1)) {
        steps.add(
          align == TextAlign.right || align == TextAlign.end
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: pathHeight ?? ScreenUtil().setHeight(130),
                        margin: EdgeInsets.only(
                          right: ScreenUtil().setWidth(10),
                          left: ScreenUtil().setWidth(10),
                        ),
                        decoration: childContainerDecoration ?? BoxDecoration(),
                        child: children[i],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: indicatorSize ?? ScreenUtil().setHeight(30),
                          width: indicatorSize ?? ScreenUtil().setWidth(30),
                          decoration: BoxDecoration(
                            color: lastIndicatorColor ?? indicatorsColor,
                            shape: indicatorShape ?? BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: indicatorSize ?? ScreenUtil().setHeight(30),
                          width: indicatorSize ?? ScreenUtil().setWidth(30),
                          decoration: BoxDecoration(
                            color: lastIndicatorColor ?? indicatorsColor,
                            shape: indicatorShape ?? BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        height: pathHeight ?? ScreenUtil().setHeight(130),
                        margin: EdgeInsets.only(
                          right: ScreenUtil().setWidth(10),
                          left: ScreenUtil().setWidth(10),
                        ),
                        decoration: childContainerDecoration ?? BoxDecoration(),
                        child: children[i],
                      ),
                    ),
                  ],
                ),
        );
      } else {
        steps.add(
          align == TextAlign.right || align == TextAlign.end
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: pathHeight ?? ScreenUtil().setHeight(130),
                        margin: EdgeInsets.only(
                          right: ScreenUtil().setWidth(10),
                          left: ScreenUtil().setWidth(10),
                        ),
                        decoration: childContainerDecoration ?? BoxDecoration(),
                        child: children[i],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: indicatorSize ?? ScreenUtil().setHeight(30),
                          width: indicatorSize ?? ScreenUtil().setWidth(30),
                          decoration: BoxDecoration(
                            color: i == indicatorsNumber - 1 &&
                                    lastIndicatorColor != null
                                ? lastIndicatorColor
                                : indicatorsColor,
                            shape: indicatorShape ?? BoxShape.circle,
                          ),
                        ),
                        Container(
                          height: pathHeight ?? ScreenUtil().setHeight(130),
                          width: pathWidth ?? ScreenUtil().setWidth(3),
                          decoration: BoxDecoration(
                            color: pathColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: indicatorSize ?? ScreenUtil().setHeight(30),
                          width: indicatorSize ?? ScreenUtil().setWidth(30),
                          decoration: BoxDecoration(
                            color: i == indicatorsNumber - 1 &&
                                    lastIndicatorColor != null
                                ? lastIndicatorColor
                                : indicatorsColor,
                            shape: indicatorShape ?? BoxShape.circle,
                          ),
                        ),
                        Container(
                          height: pathHeight ?? ScreenUtil().setHeight(130),
                          width: pathWidth ?? ScreenUtil().setWidth(3),
                          decoration: BoxDecoration(
                            color: pathColor,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        height: pathHeight ?? ScreenUtil().setHeight(130),
                        margin: EdgeInsets.only(
                          right: ScreenUtil().setWidth(10),
                          left: ScreenUtil().setWidth(10),
                        ),
                        decoration: childContainerDecoration ?? BoxDecoration(),
                        child: children[i],
                      ),
                    ),
                  ],
                ),
        );
      }
    }

    return steps;
  }
}

Widget bottomBar({
  @required BuildContext context,
  @required bool isHome,
  @required bool isOrders,
  @required bool isFollowers,
  @required bool isContact,
}) {
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
            isSelected: isContact,
            onPressed: () {
              !isContact
                  ? Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ContactUs(),
                      ),
                    )
                  : print('');
            },
          ),
          bottomBarIcon(
              icon: Icons.business_center,
              isSelected: isFollowers,
              onPressed: () {
                !isFollowers
                    ? Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => FollowersPage(),
                        ),
                      )
                    : print('');
              }),
          SizedBox(
            width: ScreenUtil().setWidth(70),
          ),
          bottomBarIcon(
            icon: Icons.storage,
            isSelected: isOrders,
            onPressed: () {
              !isOrders
                  ? Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => OrdersPage(),
                      ),
                    )
                  : print('');
            },
          ),
          bottomBarIcon(
            icon: Icons.home,
            isSelected: isHome,
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

Widget trackingFeild({
  @required child,
  @required String label,
  double height = 25,
  double horizontalPadding = 5,
  double width,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: ScreenUtil().setWidth(horizontalPadding),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          label,
          textAlign: TextAlign.right,
          style: textStyle.copyWith(
            color: purpleColor,
          ),
        ),
        CustomPaint(
          painter: TextFormFieldShape(purpleColor),
          child: Container(
            height: ScreenUtil().setHeight(height),
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setHeight(10),
            ),
            width: width ?? ScreenUtil.screenWidth / 2,
            child: child,
          ),
        ),
      ],
    ),
  );
}

Future<void> showOptionsDialog(BuildContext context) async {
  await showGeneralDialog(
    barrierLabel: "More Options",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: 700),
    context: context,
    pageBuilder: (context, anim1, anim2) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: ScreenUtil().setHeight(90),
          width: ScreenUtil().setWidth(140),
          child: ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: ScreenUtil().setHeight(90),
              width: ScreenUtil().setWidth(140),
              color: purpleColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  dialogOptionItem(
                    text: 'المعاملات',
                    icon: FontAwesomeIcons.solidHandshake,
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => TransactionsPage(),
                        ),
                      );
                    },
                  ),
                  dialogOptionItem(
                    text: 'التعميد',
                    icon: FontAwesomeIcons.handHoldingUsd,
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => AccreditationPage(),
                        ),
                      );
                    },
                  ),
                  dialogOptionItem(
                    text: 'استفسار',
                    icon: FontAwesomeIcons.commentDollar,
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => AskQuestionPage(),
                        ),
                      );
                    },
                  ),
                  dialogOptionItem(
                    text: 'شركات',
                    icon: FontAwesomeIcons.users,
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => CompaniesPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          margin: EdgeInsets.only(
            bottom: ScreenUtil().setHeight(60),
            left: ScreenUtil().setHeight(12),
            right: ScreenUtil().setHeight(12),
          ),
        ),
      );
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return SlideTransition(
        position: Tween(
          begin: Offset(0, 1),
          end: Offset(0, 0),
        ).animate(anim1),
        child: child,
      );
    },
  );
}

Widget dialogOptionItem({
  @required text,
  @required IconData icon,
  Function onTap,
  double textFontSize = 17,
  Color textColor = Colors.white,
  TextStyle textStyle = const TextStyle(
    fontSize: 17,
    decoration: TextDecoration.none,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  ),
  Color iconColor = Colors.white,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          '$text',
          style: textStyle,
        ),
        Icon(
          icon,
          color: iconColor,
        ),
      ],
    ),
  );
}

Future<void> showSubmitDialog(BuildContext context) async {
  await showGeneralDialog(
    barrierLabel: "More Options",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: 600),
    context: context,
    pageBuilder: (context, anim1, anim2) {
      Future.delayed(
        Duration(milliseconds: 2000),
      ).then(
        (value) {
          Navigator.of(context).pop();
        },
      );
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: ScreenUtil().setHeight(110),
          width: ScreenUtil.screenWidth,
          child: ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: ScreenUtil().setHeight(110),
              margin: EdgeInsets.all(
                ScreenUtil().setWidth(20),
              ),
              width: ScreenUtil.screenWidth,
              color: purpleColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.check_circle,
                    size: 60,
                    color: Colors.white,
                  ),
                  Text(
                    'لقد تم ارسال طلبك بنجاح',
                    style: TextStyle(
                      fontSize: 14,
                      decoration: TextDecoration.none,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          margin: EdgeInsets.only(
            bottom: ScreenUtil.screenHeight / 4,
            left: ScreenUtil().setHeight(12),
            right: ScreenUtil().setHeight(12),
          ),
        ),
      );
    },
    useRootNavigator: true,
    transitionBuilder: (context, anim1, anim2, child) {
      return SlideTransition(
        position: Tween(
          begin: Offset(0, 1),
          end: Offset(0, 0),
        ).animate(anim1),
        child: child,
      );
    },
  );
}
