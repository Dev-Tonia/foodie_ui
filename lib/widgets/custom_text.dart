import 'package:flutter/material.dart';
import 'package:foodie/components/colors.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.title,
      this.width,
      this.underline,
      this.bottom = 0,
      required this.style})
      : super(key: key);
  final String title;
  final Border? underline;
  final double? width;
  final double bottom;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: bottom, // Space between underline and text
      ),
      width: width,
      decoration: BoxDecoration(
        border: underline,
      ),
      child: Center(
        child: Text(
          title,
          style: style,
        ),
      ),
    );
  }
}
