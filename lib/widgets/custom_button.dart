import 'package:flutter/material.dart';

import '../components/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      height: 70,
      color: AppColors.primaryColor,
      child: Text(
        title,
        style: const TextStyle(
          color: AppColors.buttonTextColor,
          fontSize: 17,
          height: 1.2,
        ),
      ),
    );
  }
}
