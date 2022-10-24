import 'package:flutter/material.dart';
import 'package:foodie/components/colors.dart';
import 'package:foodie/components/constant.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:foodie/widgets/checkout_card.dart';

import '../widgets/cart_item.dart';
import '../widgets/custom_slidable_action.dart';
import '../widgets/customized_slidable_action.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                  ),
                  AppConstant.searchScreenSpacer(width: 100),
                  Text(
                    'Cart',
                    style: AppConstant.textStyle(),
                  ),
                ],
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
