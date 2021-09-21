import 'package:flutter/material.dart';

mixin NavigatorUtil {
  static void navigateReplace(BuildContext context, Widget route,
          {bool isDialog = false}) =>
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<dynamic>(
          fullscreenDialog: isDialog,
          builder: (BuildContext context) => route,
        ),
      );

  static void navigate(BuildContext context, Widget route,
          {bool isDialog = false}) =>
      Navigator.push(
        context,
        MaterialPageRoute<dynamic>(
          fullscreenDialog: isDialog,
          builder: (BuildContext context) => route,
        ),
      );

  static void pushUntil(BuildContext context, Widget route) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute<dynamic>(builder: (BuildContext context) {
      return route;
    }), (Route<dynamic> route) => false);
  }

  static void popToFirst(BuildContext context) =>
      Navigator.of(context).popUntil((Route<dynamic> route) => route.isFirst);

  static void popView(BuildContext context) => Navigator.pop(context);
}
