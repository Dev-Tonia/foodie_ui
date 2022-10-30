import 'package:flutter/material.dart';
import '../components/colors.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    required this.title,
    required this.price,
    required this.imageString,
    required this.width,
    required this.height,
  }) : super(key: key);
  final String title;
  final String price;
  final String imageString;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      width: 220,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'SF Pro Rounded',
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 17,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'SF Pro Rounded',
                      ),
                    ),
                    const SizedBox(
                      height: 34,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              radius: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  imageString,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
