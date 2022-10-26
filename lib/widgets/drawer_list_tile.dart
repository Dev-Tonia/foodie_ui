import 'package:flutter/material.dart';

import '../components/constant.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.onTap,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);
  final Function() onTap;
  final String title;
  final String imageUrl;
  static Padding drawerItemDivider() {
    return const Padding(
      padding: EdgeInsets.only(left: 60.0, right: 60),
      child: Divider(
        color: Color(0xffF4F4F8),
        thickness: 0.7,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: Image.asset(imageUrl),
        title: Text(
          title,
          style: AppConstant.textStyle(color: Colors.white),
        ),
      ),
    );
  }
}
