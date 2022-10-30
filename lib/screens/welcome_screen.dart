import 'package:flutter/material.dart';
import 'package:foodie/components/colors.dart';
import 'package:foodie/screens/home_screen.dart';
import 'package:foodie/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF4B3A),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 51),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 36.5,
                    child: Image.asset(
                      'assets/images/Bella Olonje logo.png',
                    ),
                  ),
                  const SizedBox(
                    height: 31,
                  ),
                  const Text(
                    'Food for Everyone',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SF Pro Rounded',
                      fontWeight: FontWeight.w800,
                      fontSize: 55,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          'assets/images/ToyFaces_Tansparent_BG_29.png',
                          width: 310,
                          height: 400,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          'assets/images/ToyFaces_Tansparent_BG_49.png',
                          width: 310,
                          height: 400,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 10, left: 50, right: 50),
                    child: CustomButton(
                        title: 'Get starteed',
                        color: Colors.white,
                        textcolor: AppColors.primaryColor,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*
Stack(
              children: [
                Positioned(
                  left: 150,
                  child: Image.asset(
                    'assets/images/ToyFaces_Tansparent_BG_29.png',
                  ),
                ),
                Positioned(
                  child: Image.asset(
                    'assets/images/ToyFaces_Tansparent_BG_49.png',
                  ),
                ),
              ],
            )
 */