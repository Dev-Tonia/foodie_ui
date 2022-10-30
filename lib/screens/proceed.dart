import 'package:flutter/material.dart';
import 'package:foodie/components/colors.dart';
import 'package:foodie/components/constant.dart';
import 'package:foodie/widgets/custom_button.dart';

class ProceedPayment extends StatelessWidget {
  const ProceedPayment({Key? key}) : super(key: key);
// this is use to build the alert a custom alert dialog
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0x80000000),
      child: Center(
        child: Container(
          height: 350,
          width: 350,
          margin: const EdgeInsets.only(
            left: 50,
            right: 50,
            top: 100,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 17,
                  bottom: 19,
                  left: 45,
                ),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.screenColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Text(
                  'Please note',
                  style: AppConstant.textStyle(
                    size: 20,
                    weight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 25,
                  left: 45,
                  top: 18,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        'Delivery to Mainland',
                        style: AppConstant.textStyle(
                          size: 15,
                          weight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Text(
                      'N1000 - N2000',
                      style: AppConstant.textStyle(weight: FontWeight.w400),
                    ),
                    AppConstant.searchScreenSpacer(height: 17),
                    const Divider(),
                    AppConstant.searchScreenSpacer(height: 17),
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        'Delivery to island',
                        style: AppConstant.textStyle(
                          size: 15,
                          weight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Text(
                      'N2000 - N3000',
                      style: AppConstant.textStyle(weight: FontWeight.w400),
                    ),
                    AppConstant.searchScreenSpacer(height: 34),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Cancel',
                            style: AppConstant.textStyle(
                              color: const Color(0X80000000),
                              size: 17,
                            ),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 150,
                          height: 50,
                          child: CustomButton(
                            title: 'Proceed',
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
