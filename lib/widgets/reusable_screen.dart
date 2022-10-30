import 'package:flutter/material.dart';
import 'package:foodie/components/constant.dart';

import '../components/colors.dart';
import 'custom_button.dart';

class ReusableScreen extends StatelessWidget {
  const ReusableScreen({
    Key? key,
    required this.bodyText,
    required this.bodySubText,
    required this.imageUrl,
  }) : super(key: key);

  final String bodyText;
  final String bodySubText;

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        Image.asset(
          imageUrl,
          height: 118,
          width: 107,
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
        Text(bodySubText,
            textAlign: TextAlign.center,
            style: AppConstant.textStyle(weight: FontWeight.w400, size: 17)),
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 50, left: 50),
          child: CustomButton(
            title: 'Start odering',
            onPressed: () {},
          ),
        ),
        const SizedBox(
          height: 45,
        ),
      ],
    );
  }
}
