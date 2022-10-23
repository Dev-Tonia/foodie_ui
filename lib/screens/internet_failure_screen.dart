import 'package:flutter/material.dart';
import 'package:foodie/widgets/custom_button.dart';

import '../components/constant.dart';

class InternetFailureScreen extends StatelessWidget {
  const InternetFailureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 47, right: 47, top: 180),
        child: Center(
          child: Column(
            children: [
              const Icon(
                Icons.signal_wifi_statusbar_connected_no_internet_4,
                size: 200,
                color: Color(0XFFC7C7C7),
              ),
              Text(
                'No internet Connection',
                style: AppConstant.textStyle(size: 28),
              ),
              AppConstant.searchScreenSpacer(height: 17),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 51),
                child: Opacity(
                  opacity: 0.57,
                  child: Text(
                    'Your internet connection is currently not available please check or try again.',
                    textAlign: TextAlign.center,
                    style: AppConstant.textStyle(
                        size: 17, weight: FontWeight.w400),
                  ),
                ),
              ),
              AppConstant.searchScreenSpacer(height: 80),
              const CustomButton(title: 'Try again')
            ],
          ),
        ),
      ),
    ));
  }
}
