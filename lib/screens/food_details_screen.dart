import 'package:flutter/material.dart';
import 'package:foodie/components/colors.dart';
import 'package:foodie/components/constant.dart';
import 'package:foodie/widgets/custom_button.dart';

import '../widgets/custom_appbar.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leaddingOnTap: () {},
          leadingIcon: Icons.arrow_back_ios,
          acationOnTap: () {},
          actionsIcon: Icons.favorite,
        ),
        backgroundColor: AppColors.screenColor,
        body: Padding(
          padding: const EdgeInsets.only(
            left: 50,
            right: 49,
            top: 10,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(200.0),
                        child: CircleAvatar(
                          radius: 100,
                          child: Image.asset(
                            'assets/images/image 2 (6).png',
                          ),
                        ),
                      ),
                      AppConstant.searchScreenSpacer(height: 45),
                      Text(
                        'Veggie tomato mix',
                        textAlign: TextAlign.center,
                        style: AppConstant.textStyle(size: 28),
                      ),
                      Text(
                        'N1900',
                        style: AppConstant.textStyle(
                          size: 22,
                          weight: FontWeight.w700,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                AppConstant.searchScreenSpacer(height: 43),
                Text(
                  'Delivery info',
                  style: AppConstant.textStyle(size: 17),
                ),
                AppConstant.searchScreenSpacer(height: 7),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
                    style: AppConstant.textStyle(size: 17),
                  ),
                ),
                AppConstant.searchScreenSpacer(height: 40),
                Text(
                  'Return policy',
                  style: AppConstant.textStyle(size: 17),
                ),
                AppConstant.searchScreenSpacer(height: 7),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
                    style: AppConstant.textStyle(size: 17),
                  ),
                ),
                AppConstant.searchScreenSpacer(height: 60),
                CustomButton(
                  title: 'Add to cart',
                  onPressed: () {},
                ),
                AppConstant.searchScreenSpacer(height: 41),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
