import 'package:flutter/cupertino.dart';

class AppConstant {
  static SizedBox searchScreenSpacer({double width = 0, double height = 23}) {
    return SizedBox(
      width: width,
      height: height,
    );
  }

  static TextStyle textStyle({
    double size = 18,
    double height = 1.2,
    FontWeight weight = FontWeight.w600,
    Color? color,
    Color? backgroundColor,
  }) {
    return TextStyle(
      fontSize: size,
      height: height,
      fontFamily: 'SF Pro Rounded',
      fontWeight: weight,
      color: color,
      backgroundColor: backgroundColor,
    );
  }
}
