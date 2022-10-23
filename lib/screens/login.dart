import 'package:flutter/material.dart';
import 'package:foodie/widgets/input_form.dart';

import '../components/colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 382,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(34),
                  bottomRight: Radius.circular(34),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Image.asset(
                        'assets/images/Bella Olonje logo 111 1.png'),
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CustomText(
                        title: 'Login',
                        style: TextStyle(
                          fontSize: 18,
                          height: 1.2,
                          fontWeight: FontWeight.w600,
                        ),
                        bottom: 15,
                        width: 130.0,
                        underline: Border(
                          bottom: BorderSide(
                            color: AppColors.primaryColor,
                            width: 3.0,
                            // Underline thickness
                          ),
                        ),
                      ),
                      CustomText(
                        title: 'Sign up',
                        style: TextStyle(
                          fontSize: 18,
                          height: 1.2,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 65,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputField(
                    onChanged: ((x) {}),
                    lableText: 'Email Address',
                    keybordType: TextInputType.emailAddress,
                    inputBorder: const UnderlineInputBorder(),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InputField(
                    onChanged: ((x) {}),
                    lableText: 'Password',
                    inputBorder: const UnderlineInputBorder(),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff000000),
                      ),
                    ),
                    obscureValue: true,
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot passcode?',
                      style: TextStyle(
                        fontSize: 17,
                        height: 1.2,
                        fontFamily: 'SF Pro Round',
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 134,
                  ),
                  const CustomButton(
                    title: 'Login',
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
