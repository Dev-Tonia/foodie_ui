import 'package:flutter/material.dart';
import 'package:foodie/components/colors.dart';
import 'package:foodie/components/constant.dart';

class ProfileUpdateScreen extends StatelessWidget {
  const ProfileUpdateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 50.0,
            top: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.arrow_back_ios,
              ),
              AppConstant.searchScreenSpacer(height: 46),
            ],
          ),
        ),
      ),
    );
  }
}
