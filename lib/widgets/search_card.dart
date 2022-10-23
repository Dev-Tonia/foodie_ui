import 'dart:ffi';

import 'package:flutter/material.dart';

import '../components/colors.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    Key? key,
    required this.title,
    required this.price,
    required this.imageString,
  }) : super(key: key);
  final String title;
  final String price;
  final String imageString;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.hardEdge,
      children: [
        Container(
          width: 156,
          height: 212.5,
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
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 25,
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
        Positioned(
          top: -50,
          left: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: CircleAvatar(
              radius: 55,
              child: Image.asset(
                imageString,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
