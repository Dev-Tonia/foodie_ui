import 'package:flutter/material.dart';

import '../components/constant.dart';

class ProfileActions extends StatelessWidget {
  const ProfileActions({
    Key? key,
    required this.title,
    required this.onchange,
  }) : super(key: key);
  final String title;
  final Function() onchange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 20),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Text(
              title,
              style: AppConstant.textStyle(),
            ),
            const Spacer(),
            IconButton(
              onPressed: onchange,
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
            )
          ],
        ),
      ),
    );
  }
}
