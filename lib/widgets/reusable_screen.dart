import 'package:flutter/material.dart';

import '../components/colors.dart';
import 'custom_button.dart';

class ReusableScreen extends StatelessWidget {
  const ReusableScreen({
    Key? key,
    required this.title,
    required this.bodyText,
    required this.bodySubText,
    required this.bodyIcon,
  }) : super(key: key);

  final String title;
  final String bodyText;
  final String bodySubText;

  final IconData bodyIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 165, top: 10, left: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.arrow_back_ios,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  height: 1.2,
                  fontFamily: 'SF Pro Rounded',
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
        const Spacer(),
        Icon(
          bodyIcon,
          size: 106,
          color: AppColors.iconColor,
        ),
        const SizedBox(
          height: 27,
        ),
        Text(
          bodyText,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 28,
              height: 1.2,
              fontFamily: 'SF Pro Rounded',
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 17,
        ),
        Text(
          bodySubText,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 17,
              height: 1.2,
              fontFamily: 'SF Pro Rounded',
              fontWeight: FontWeight.w400),
        ),
        const Spacer(),
        const Padding(
          padding: EdgeInsets.only(right: 50, left: 50),
          child: CustomButton(title: 'Start odering'),
        ),
        const SizedBox(
          height: 45,
        ),
      ],
    );
  }
}
