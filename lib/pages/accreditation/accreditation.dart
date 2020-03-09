import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ingaz_fawry/pages/notifications/notification_page.dart';
import 'package:ingaz_fawry/utils/const.dart';
import 'package:ingaz_fawry/widgets/buttons.dart';
import 'package:ingaz_fawry/widgets/text_form_field.dart';
import 'package:ingaz_fawry/widgets/widgets.dart';

class AccreditationPage extends StatefulWidget {
  @override
  _AccreditationPageState createState() => _AccreditationPageState();
}

class _AccreditationPageState extends State<AccreditationPage> {
  String paymentType = 'تحويل بنكي';
  int workNumber = 0;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: sideMenu(context),
      ),
      appBar: appBar(
        context: context,
        title: 'التعميد',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: ScreenUtil().setWidth(18),
            right: ScreenUtil().setWidth(18),
            bottom: ScreenUtil().setWidth(18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Center(
                child: Text(
                  'اضافة طلب تعميد',
                  style: TextStyle(
                    color: purpleColor,
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(15),
              ),
              textFormField(
                label: 'جوال صاحب الطلب',
                hint: 'اكتب جوال صاحب الطلب',
                keyboardType: TextInputType.phone,
                horizontalPadding: ScreenUtil().setWidth(5),
                contentHorizontalPadding: 7,
                hintTextStyle: TextStyle(
                  fontSize: 10,
                  color: purpleColor,
                ),
                height: ScreenUtil().setHeight(25),
                width: ScreenUtil.screenWidth,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(7),
              ),
              textFormField(
                label: 'جوال المعقب',
                hint: 'اكتب جوال المعقب',
                keyboardType: TextInputType.phone,
                horizontalPadding: ScreenUtil().setWidth(5),
                contentHorizontalPadding: 7,
                hintTextStyle: TextStyle(
                  fontSize: 10,
                  color: purpleColor,
                ),
                height: ScreenUtil().setHeight(25),
                width: ScreenUtil.screenWidth,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(7),
              ),
              trackingFeild(
                label: 'عدد ايام العمل',
                width: ScreenUtil.screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_upward),
                      onPressed: () {
                        workNumber += 1;
                        setState(() {});
                      },
                    ),
                    Text(
                      '$workNumber',
                      style: TextStyle(
                        fontSize: 14,
                        color: purpleColor,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_downward),
                      onPressed: () {
                        workNumber <= 0 ? workNumber = 0 : workNumber -= 1;
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(7),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: textFormField(
                      label: 'رسوم التعميد',
                      hint: '0000 ريال سعودي',
                      contentHorizontalPadding: 7,
                      hintTextStyle: TextStyle(
                        fontSize: 10,
                        color: purpleColor,
                      ),
                      keyboardType: TextInputType.number,
                      horizontalPadding: ScreenUtil().setWidth(7),
                      height: ScreenUtil().setHeight(25),
                      width: ScreenUtil.screenWidth,
                    ),
                  ),
                  Expanded(
                    child: textFormField(
                      label: 'قيمة التعميد',
                      hint: 'اطتب المبلغ الذي تريد تعميده',
                      contentHorizontalPadding: 7,
                      hintTextStyle: TextStyle(
                        fontSize: 9,
                        color: purpleColor,
                      ),
                      keyboardType: TextInputType.number,
                      horizontalPadding: ScreenUtil().setWidth(7),
                      height: ScreenUtil().setHeight(25),
                      width: ScreenUtil.screenWidth,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(7),
              ),
              textFormField(
                label: 'اجمالي المبلغ',
                hint: '0000 ريال سعودي',
                contentHorizontalPadding: 7,
                enable: false,
                hintTextStyle: TextStyle(
                  fontSize: 10,
                  color: purpleColor,
                ),
                keyboardType: TextInputType.phone,
                textAlign: TextAlign.center,
                horizontalPadding: ScreenUtil().setWidth(5),
                height: ScreenUtil().setHeight(25),
                width: ScreenUtil.screenWidth,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(7),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: textFormField(
                      label: 'رقم التعميد',
                      hint: 'ان وجد',
                      contentHorizontalPadding: 7,
                      hintTextStyle: TextStyle(
                        fontSize: 9,
                        color: purpleColor,
                      ),
                      keyboardType: TextInputType.number,
                      horizontalPadding: ScreenUtil().setWidth(7),
                      height: ScreenUtil().setHeight(25),
                      width: ScreenUtil.screenWidth,
                    ),
                  ),
                  Expanded(
                    child: trackingFeild(
                      label: 'طريقة الدفع',
                      width: ScreenUtil.screenWidth,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          hint: Text(
                            '$paymentType',
                            textAlign: TextAlign.right,
                          ),
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          items: <String>[
                            'تحويل بنكي',
                            'تحويل بنكي',
                            'تحويل بنكي',
                          ].map<DropdownMenuItem<String>>(
                            (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            },
                          ).toList(),
                          onChanged: (item) {
                            setState(
                              () {
                                paymentType = item;
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(7),
              ),
              trackingFeild(
                label: 'المرفقات',
                width: ScreenUtil.screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.plusCircle,
                      size: 16,
                      color: purpleColor,
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(8),
                    ),
                    Text(
                      'تحميل الملفات',
                      style: textStyle.copyWith(
                        color: purpleColor,
                      ),
                    )
                  ],
                ),
              ),
              Theme(
                data: Theme.of(context).copyWith(
                  unselectedWidgetColor: greenColor,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                ),
                child: CheckboxListTile(
                  value: isChecked,
                  checkColor: Colors.white,
                  activeColor: greenColor,
                  dense: true,
                  title: Text(
                    'قرات واوافق علي شروط الخدمة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 10,
                      color: greenColor,
                    ),
                  ),
                  onChanged: (val) {
                    isChecked = val;
                    setState(() {});
                  },
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4),
              ),
              Center(
                child: TheButton(
                  ontap: () {
                    showSubmitDialog(context);
                  },
                  child: Text(
                    'طلب تعميد',
                    style: textStyle,
                  ),
                  color: purpleColor,
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
