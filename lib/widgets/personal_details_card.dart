import 'package:flutter/material.dart';
import '../components/constant.dart';

class PersonalDetailsCard extends StatelessWidget {
  const PersonalDetailsCard({
    Key? key,
    required this.imageUrl,
    this.size = 13,
  }) : super(key: key);
  final String imageUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 26,
        left: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imageUrl),
          AppConstant.searchScreenSpacer(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Marvis Ighedosa',
                style: AppConstant.textStyle(),
              ),
              const Divider(),
              Text(
                'dosamarvis@gmail.com',
                style: AppConstant.textStyle(
                  color: const Color(0x80000000),
                  size: 13,
                  weight: FontWeight.w400,
                ),
              ),
              const Divider(),
              Text(
                'No 15 uti street off ovie palace \nroad effurun delta state ',
                style: AppConstant.textStyle(
                  color: const Color(0x80000000),
                  size: 13,
                  weight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
