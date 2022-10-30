import 'package:flutter/material.dart';
import 'package:foodie/components/colors.dart';
import 'package:foodie/widgets/custom_button.dart';

import '../components/constant.dart';
import '../utils/enums.dart';
import '../widgets/checkout_card.dart';
import '../widgets/custom_appbar.dart';

class CheckoutDeliveryScreen extends StatelessWidget {
  const CheckoutDeliveryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(
        leaddingOnTap: () {},
        leadingIcon: Icons.arrow_back_ios,
        title: 'Checkout',
      ),
      backgroundColor: AppColors.screenColor,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 41),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppConstant.searchScreenSpacer(height: 42),
              Text(
                'Delivery',
                style: AppConstant.textStyle(size: 34),
              ),
              AppConstant.searchScreenSpacer(height: 42),
              Row(
                children: [
                  Text(
                    'Address details',
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
              AppConstant.searchScreenSpacer(height: 20),
              CheckoutCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Marvis Kparobo',
                      style: AppConstant.textStyle(
                        size: 17,
                        weight: FontWeight.w500,
                      ),
                    ),
                    const Divider(),
                    Text(
                      'Km 5 refinery road oppsite republic road, effurun, delta state',
                      style: AppConstant.textStyle(
                        size: 15,
                        weight: FontWeight.w400,
                      ),
                    ),
                    const Divider(),
                    Text(
                      '+234 9011039271',
                      style: AppConstant.textStyle(
                        size: 15,
                        weight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              AppConstant.searchScreenSpacer(height: 45),
              Text(
                'Delivery method.',
                style: AppConstant.textStyle(size: 17),
              ),
              AppConstant.searchScreenSpacer(height: 40),
              CheckoutCard(
                left: 0,
                child: Column(
                  children: [
                    RadioListTile(
                      activeColor: AppColors.primaryColor,
                      value: DeliveryOption.doorDelivery,
                      groupValue: Selections.deliveryOption,
                      onChanged: (value) {},
                      title: Text(
                        'Door delivery',
                        style: AppConstant.textStyle(
                            size: 17, weight: FontWeight.w400),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 60.0),
                      child: Divider(),
                    ),
                    RadioListTile(
                      value: DeliveryOption.pickUp,
                      groupValue: Selections.deliveryOption,
                      onChanged: (value) {},
                      title: Text(
                        'Pick up',
                        style: AppConstant.textStyle(
                            size: 17, weight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              AppConstant.searchScreenSpacer(height: 70),
              Row(
                children: [
                  Text(
                    'Total',
                    style: AppConstant.textStyle(
                      size: 17,
                      weight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '23,000',
                    style: AppConstant.textStyle(
                      size: 22,
                    ),
                  )
                ],
              ),
              AppConstant.searchScreenSpacer(height: 48),
              CustomButton(
                title: "Proceed to payment",
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    ));
  }
}
