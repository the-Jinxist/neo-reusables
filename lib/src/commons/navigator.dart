import 'package:flutter/material.dart';

mixin NavigatorUtil {
  ///Wrapper around [Navigator.pushReplacement()]
  static void navigateReplace(BuildContext context, Widget route,
          {bool isDialog = false}) =>
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<dynamic>(
          fullscreenDialog: isDialog,
          builder: (BuildContext context) => route,
        ),
      );

  ///Wrapper around [Navigator.push()]
  static void navigate(BuildContext context, Widget route,
          {bool isDialog = false}) =>
      Navigator.push(
        context,
        MaterialPageRoute<dynamic>(
          fullscreenDialog: isDialog,
          builder: (BuildContext context) => route,
        ),
      );

  ///Wrapper around [Navigator.pushAndRemoveUntill()]
  static void pushUntil(BuildContext context, Widget route) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute<dynamic>(builder: (BuildContext context) {
      return route;
    }), (Route<dynamic> route) => false);
  }

  ///Wrapper around [Navigator.popUntil()]
  static void popToFirst(BuildContext context) =>
      Navigator.of(context).popUntil((Route<dynamic> route) => route.isFirst);

  ///Wrapper around [Navigator.pop()]
  static void popView(BuildContext context) => Navigator.pop(context);
}
