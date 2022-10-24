import 'package:flutter/material.dart';
import 'package:foodie/components/colors.dart';
import 'package:foodie/components/constant.dart';
import 'package:foodie/widgets/custom_button.dart';
import 'package:foodie/widgets/personal_details_card.dart';

import '../widgets/profile_actions.dart';

class ProfileUpdateScreen extends StatelessWidget {
  const ProfileUpdateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 50.0,
              right: 50.0,
              top: 20,
              bottom: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                ),
                AppConstant.searchScreenSpacer(height: 46),
                Text(
                  'My profile',
                  style: AppConstant.textStyle(
                    size: 34,
                    height: 1.5,
                  ),
                ),
                AppConstant.searchScreenSpacer(height: 44),
                Row(
                  children: [
                    Text(
                      'Personal details',
                      style: AppConstant.textStyle(size: 17),
                    ),
                    const Spacer(),
                    Text(
                      'change',
                      style: AppConstant.textStyle(
                        size: 15,
                        weight: FontWeight.w400,
                        color: const Color(0xfff47b0a),
                      ),
                    )
                  ],
                ),
                AppConstant.searchScreenSpacer(height: 11),
                const PersonalDetailsCard(
                  imageUrl: 'assets/images/Rectangle 6 (1).png',
                  size: 15,
                ),
                AppConstant.searchScreenSpacer(height: 27),
                ProfileActions(
                  title: 'Orders',
                  onchange: () {},
                ),
                AppConstant.searchScreenSpacer(height: 27),
                ProfileActions(
                  title: 'Pending reviews',
                  onchange: () {},
                ),
                AppConstant.searchScreenSpacer(height: 27),
                ProfileActions(
                  title: 'Faq',
                  onchange: () {},
                ),
                AppConstant.searchScreenSpacer(height: 27),
                ProfileActions(
                  title: 'Help',
                  onchange: () {},
                ),
                AppConstant.searchScreenSpacer(height: 59),
                const CustomButton(title: 'Update')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
