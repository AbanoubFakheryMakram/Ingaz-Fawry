import 'package:flutter/material.dart';

class AppUtils {
  static hidwKeyboared(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
