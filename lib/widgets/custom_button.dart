import 'package:flutter/material.dart';

import '../components/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    this.onPressed,
    this.color = AppColors.primaryColor,
    this.textcolor = AppColors.buttonTextColor,
  }) : super(key: key);
  final String title;
  final Function()? onPressed;
  final Color color;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      height: 70,
      color: color,
      child: Text(
        title,
        style: TextStyle(
          color: textcolor,
          fontSize: 17,
          height: 1.2,
        ),
      ),
    );
  }
}
