import 'package:flutter/material.dart';
import 'package:foodie/components/colors.dart';
import 'package:foodie/components/constant.dart';
import 'package:foodie/widgets/custom_button.dart';

import '../utils/enums.dart';
import '../widgets/personal_details_card.dart';
import '../widgets/radio_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.screenColor,
        body: Padding(
          padding:
              const EdgeInsets.only(left: 50, right: 49, top: 10, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Text('Spicy chieckns', style: AppConstant.textStyle())
                ],
              ),
              AppConstant.searchScreenSpacer(height: 56),
              Text(
                'Information',
                style: AppConstant.textStyle(size: 17),
              ),
              AppConstant.searchScreenSpacer(height: 12),
              const PersonalDetailsCard(
                imageUrl: 'assets/images/Rectangle 6.png',
              ),
              AppConstant.searchScreenSpacer(
                height: 46,
              ),
              Text(
                'Payment Method',
                style: AppConstant.textStyle(size: 17),
              ),
              AppConstant.searchScreenSpacer(
                height: 21,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 31,
                  left: 21,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    RadioListTile(
                      title: const RadioButtonTitle(
                        color: AppColors.primaryColor,
                        imageTitle: 'assets/images/Vector.png',
                        title: 'Card',
                      ),
                      value: PaymentOption.card,
                      activeColor: AppColors.primaryColor,
                      groupValue: Selections.option,
                      onChanged: (value) {},
                    ),
                    RadioListTile(
                      title: const RadioButtonTitle(
                        color: Color(0xffEB4796),
                        imageTitle: 'assets/images/Vector (1).png',
                        title: 'Bank Account',
                      ),
                      value: PaymentOption.bankAcount,
                      groupValue: Selections.option,
                      onChanged: (value) {},
                    ),
                    RadioListTile(
                      title: const RadioButtonTitle(
                        color: Color(0xff0038FF),
                        imageTitle: 'assets/images/Vector (2).png',
                        title: 'Paypal',
                        isDivider: false,
                      ),
                      value: PaymentOption.paypal,
                      groupValue: Selections.option,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
              AppConstant.searchScreenSpacer(height: 120),
              const CustomButton(title: 'Update')
            ],
          ),
        ),
      ),
    );
  }
}
