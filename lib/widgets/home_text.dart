import 'package:flutter/material.dart';

import '../components/colors.dart';
import 'custom_text.dart';

class HomeText extends StatefulWidget {
  final String title;
  HomeText({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<HomeText> createState() => _HomeTextState();
}

class _HomeTextState extends State<HomeText> {
  Color? color;

  Border? underline;
  Color? activeColor = AppColors.primaryColor;
  Color? unactiveColor = const Color(0xff9A9A9D);
  bool selected = false;
  Color? selectColor() {
    setState(() {
      if (selected == true) {
        color = activeColor;
      } else {
        color = unactiveColor;
      }
    });
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          selected = true;
          underline = const Border(
            bottom: BorderSide(
              color: AppColors.primaryColor,
              width: 3.0,
              // Underline thickness
            ),
          );
        });
      },
      child: CustomText(
        title: widget.title,
        style: TextStyle(
          fontSize: 17,
          height: 1.2,
          color: selectColor(),
          fontWeight: FontWeight.w400,
        ),
        width: 87,
        bottom: 10,
        underline: underline,
      ),
    );
  }
}
