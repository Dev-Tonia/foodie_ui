import 'package:flutter/material.dart';
import 'package:foodie/components/colors.dart';
import 'package:foodie/components/constant.dart';

import '../widgets/custom_appbar.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leaddingOnTap: () {},
        leadingIcon: Icons.arrow_back_ios,
      ),
      backgroundColor: AppColors.screenColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0, top: 20, bottom: 330),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My offers',
                style: AppConstant.textStyle(
                  size: 34,
                  weight: FontWeight.w500,
                  height: 1.5,
                ),
              ),
              const Spacer(),
              Text(
                'ohh snap!  No offers yet',
                textAlign: TextAlign.center,
                style: AppConstant.textStyle(
                  size: 28,
                  weight: FontWeight.w500,
                  height: 1.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Opacity(
                  opacity: 0.57,
                  child: Text(
                    'Bella dose’t have any offers \nyet please check again.',
                    textAlign: TextAlign.center,
                    style: AppConstant.textStyle(
                      size: 17,
                      weight: FontWeight.w400,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
