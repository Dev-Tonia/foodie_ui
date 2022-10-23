import 'package:flutter/material.dart';

import '../components/constant.dart';

class RadioButtonTitle extends StatelessWidget {
  const RadioButtonTitle({
    Key? key,
    this.color,
    required this.imageTitle,
    this.title,
    this.isDivider = true,
  }) : super(key: key);

  final Color? color;
  final String imageTitle;
  final String? title;
  final bool isDivider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color,
              ),
              child: Image.asset(imageTitle),
            ),
            AppConstant.searchScreenSpacer(width: 11),
            Text(
              title!,
              style: AppConstant.textStyle(
                weight: FontWeight.w400,
                size: 17,
              ),
            )
          ],
        ),
        AppConstant.searchScreenSpacer(height: 15),
        if (isDivider)
          const Divider(
            color: Color(0x4D000000),
            thickness: 1,
          )
      ],
    );
  }
}
