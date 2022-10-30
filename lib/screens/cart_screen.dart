import 'package:flutter/material.dart';
import 'package:foodie/components/colors.dart';
import 'package:foodie/components/constant.dart';
import 'package:foodie/widgets/custom_button.dart';

import '../widgets/cart_item.dart';
import '../widgets/custom_appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leaddingOnTap: () {},
        leadingIcon: Icons.arrow_back_ios,
        title: 'Cart',
      ),
      backgroundColor: AppColors.screenColor,
      body: SafeArea(
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
              AppConstant.searchScreenSpacer(height: 61),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.swipe_left_outlined,
                    size: 10,
                  ),
                  Text(
                    '  swipe on an item to delete',
                    style: AppConstant.textStyle(
                        size: 10, weight: FontWeight.w400),
                  ),
                ],
              ),
              AppConstant.searchScreenSpacer(height: 23),
              const CartItem(
                imageUrl: 'assets/images/image 2 (7).png',
                foodTitle: 'Veggie tomato mix',
              ),
              AppConstant.searchScreenSpacer(height: 14),
              const CartItem(
                imageUrl: 'assets/images/cartimage.png',
                foodTitle: 'Fishwith mix orange....',
              ),
              const Spacer(),
              const CustomButton(title: 'Complete order')
            ],
          ),
        ),
      ),
    );
  }
}
