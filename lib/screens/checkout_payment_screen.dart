import 'package:flutter/material.dart';
import 'package:foodie/components/colors.dart';
import 'package:foodie/widgets/custom_button.dart';

import '../components/constant.dart';
import '../utils/enums.dart';
import '../widgets/checkout_card.dart';
import '../widgets/radio_button.dart';

class CheckoutPaymentScreen extends StatelessWidget {
  const CheckoutPaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.screenColor,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 41),
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
                  Text('Checkout', style: AppConstant.textStyle())
                ],
              ),
              AppConstant.searchScreenSpacer(height: 42),
              Text(
                'Payment',
                style: AppConstant.textStyle(size: 34),
              ),
              AppConstant.searchScreenSpacer(height: 42),
              Text(
                'Payment method',
                style: AppConstant.textStyle(size: 17),
              ),
              AppConstant.searchScreenSpacer(height: 20),
              CheckoutCard(
                bottom: 75,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        isDivider: false,
                      ),
                      value: PaymentOption.bankAcount,
                      groupValue: Selections.option,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
              AppConstant.searchScreenSpacer(height: 19),
              Text(
                'Delivery method.',
                style: AppConstant.textStyle(size: 17),
              ),
              AppConstant.searchScreenSpacer(height: 20),
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
              AppConstant.searchScreenSpacer(height: 38),
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
              const CustomButton(title: "Proceed to payment")
            ],
          ),
        ),
      ),
    ));
  }
}
