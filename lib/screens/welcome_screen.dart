import 'package:flutter/material.dart';

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
                      fontSize: 65,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
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
          ],
        ),
      ),
    );
  }
}
