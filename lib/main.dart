import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ingaz_fawry/pages/splash_screen.dart';
import 'package:ingaz_fawry/test_file.dart';
import 'package:ingaz_fawry/utils/const.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ],
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ingaz Fawry',
      theme: ThemeData(
        accentColor: purpleColor,
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          color: backgroundColor,
          elevation: 0,
          iconTheme: IconThemeData(
            color: purpleColor,
          ),
        ),
      ),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      allowFontScaling: true,
    );
    return SplashScreen();
  }
}
