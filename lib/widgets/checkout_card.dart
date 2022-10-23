import 'package:flutter/material.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    Key? key,
    this.child,
    this.top = 25,
    this.left = 30,
    this.right = 53,
    this.bottom = 25,
  }) : super(key: key);
  final Widget? child;
  final double top;
  final double left;
  final double right;
  final double bottom;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          top: top,
          bottom: bottom,
          left: left,
          right: right,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: child);
  }
}
