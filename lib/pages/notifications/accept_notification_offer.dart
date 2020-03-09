import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ingaz_fawry/utils/clippers_paintes/small_container_app_bar_clipper.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/page_down_decoration.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';

class AcceptNotificationOffer extends StatefulWidget {
  @override
  _AcceptNotificationOfferState createState() =>
      _AcceptNotificationOfferState();
}

class _AcceptNotificationOfferState extends State<AcceptNotificationOffer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: sideMenu(context),
      ),
      appBar: appBar(
        context: context,
        icon: Icons.keyboard_arrow_left,
        title: 'طلبات العملاء',
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
      body: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            child: Container(
              width: ScreenUtil.screenWidth / 2.5,
              child: pageDownDecoration(
                firstDecorHeight: ScreenUtil().setHeight(90),
                sceondDecoreHeight: ScreenUtil().setHeight(50),
              ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  left: ScreenUtil().setHeight(16),
                  right: ScreenUtil().setHeight(16),
                ),
                child: Form(
                  child: SizedBox(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'معاملة بدائرة الهجرة',
                              style: textStyle.copyWith(
                                color: purpleColor,
                              ),
                            ),
                            Icon(
                              FontAwesomeIcons.solidHandshake,
                              color: purpleColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(10),
                        ),
                        Text(
                          'حالة الطلب: جديد',
                          textAlign: TextAlign.right,
                          style: textStyle.copyWith(
                            color: purpleColor,
                          ),
                        ),
                        Text(
                          'جهة المعاملة: دائرة الجوازات',
                          textAlign: TextAlign.right,
                          style: textStyle.copyWith(
                            color: purpleColor,
                          ),
                        ),
                        Text(
                          'تفاصيل المعاملة',
                          textAlign: TextAlign.right,
                          style: textStyle.copyWith(
                            color: purpleColor,
                          ),
                        ),
                        Container(
                          child: AutoSizeText(
                            'دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات دائرة الجوازات',
                            textAlign: TextAlign.right,
                            maxLines: 7,
                            style: textStyle.copyWith(
                              color: purpleColor,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(8),
                        ),
                        Text(
                          'الخدمة المطلوبة: تجديد الاقامة',
                          textAlign: TextAlign.right,
                          style: textStyle.copyWith(
                            color: purpleColor,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          child: FlatButton(
                            color: greenColor,
                            onPressed: () {},
                            child: Text(
                              'طلب تقديم',
                              style: textStyle,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  'عدد الايام',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: greenColor,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(10),
                              ),
                              Expanded(
                                child: Text(
                                  'تكلفة انجاز المهمة',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: greenColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: ScreenUtil().setHeight(25),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Expanded(
                                child: _textFormField(
                                  hint: 'ادخل عدد الايام',
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(10),
                              ),
                              Expanded(
                                child: _textFormField(
                                  hint: 'ادخل القيمة هنا',
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(10),
                        ),
                        Text(
                          'متطلبات انجاز المعاملة',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: greenColor,
                          ),
                        ),
                        _textFormField(
                          hint: 'الاوراق المطلوبة',
                          keyboardType: TextInputType.multiline,
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(18),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: ClipPath(
                            clipper: SmallContainerAppBarClipper(),
                            child: Container(
                              color: purpleColor,
                              width: ScreenUtil().setWidth(140),
                              height: ScreenUtil().setHeight(25),
                              child: Center(
                                child: Text(
                                  'ارسال',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(100),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _textFormField({String hint, TextInputType keyboardType}) {
    return TextFormField(
      style: TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
      textAlign: TextAlign.right,
      maxLines: keyboardType == TextInputType.multiline ? null : 1,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hint,
        border: InputBorder.none,
        hintStyle: TextStyle(
          color: greenColor,
          fontSize: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(
            width: 1,
            color: greenColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(
            width: 1,
            color: Colors.red,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(
            width: 1,
            color: greenColor,
          ),
        ),
      ),
    );
  }
}
