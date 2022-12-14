import 'package:flutter/material.dart';

import '../components/constant.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {Key? key,
      this.actionsIcon,
      this.title = '',
      this.leadingIcon,
      this.leaddingOnTap,
      this.acationOnTap})
      : super(key: key);
  final IconData? actionsIcon;
  final String title;
  final IconData? leadingIcon;
  final Function()? leaddingOnTap;
  final Function()? acationOnTap;

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: GestureDetector(
          onTap: leaddingOnTap,
          child: Icon(
            leadingIcon,
            color: Colors.black,
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: AppConstant.textStyle(color: Colors.black),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: GestureDetector(
            onTap: acationOnTap,
            child: Icon(
              actionsIcon,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
