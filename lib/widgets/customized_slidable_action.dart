import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CustomizedSlidableAction extends StatelessWidget {
  const CustomizedSlidableAction({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);
  final Function(BuildContext) onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      margin: const EdgeInsets.only(left: 24),
      child: Center(
        child: SlidableAction(
          onPressed: onPressed,
          backgroundColor: const Color(0xFFDF2C2C),
          foregroundColor: Colors.white,
          icon: icon,
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
