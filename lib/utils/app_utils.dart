import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';

class AppUtils {
  PermissionStatus status;

  static Future<bool> getConnectionState() async {
    return await DataConnectionChecker().hasConnection;
  }

  static void showDialog({
    @required BuildContext context,
    @required String title,
    @required String negativeText,
    @required String positiveText,
    @required Function onPositiveButtonPressed,
    Function onNegativeButtonPressed,
    @required String contentText,
    DialogTransitionType type,
  }) {
    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      animationType: type ?? DialogTransitionType.scale,
      duration: Duration(
        milliseconds: 400,
      ),
      builder: (context) {
        return ClassicGeneralDialogWidget(
          titleText: title,
          negativeText: negativeText,
          positiveText: (positiveText == '' || positiveText == null)
              ? null
              : positiveText,
          onNegativeClick: onPositiveButtonPressed,
          contentText: contentText,
          onPositiveClick: onNegativeButtonPressed ??
              () {
                Navigator.of(context).pop();
              },
        );
      },
    );
  }

  bool getNetworkState(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.mobile:
      case ConnectivityResult.wifi:
        return true;
      case ConnectivityResult.none:
        return false;
      default:
        return false;
    }
  }

  static hidwKeyboared(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static showToast({@required msg, int timeInSeconds}) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIos: timeInSeconds ?? 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  // true if granted : false if denied
  static Future<bool> askReadExternalStoragePermission() async {
    bool permissionState = false;
    await PermissionHandler().requestPermissions([
      PermissionGroup.storage,
    ]).then(
      (Map<PermissionGroup, PermissionStatus> map) {
        if (map[PermissionGroup.storage] == PermissionStatus.granted) {
          permissionState = true;
        } else {
          permissionState = false;
        }
      },
    );

    print('state of permission >>>> $permissionState');
    return permissionState;
  }
}
