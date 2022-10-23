import 'package:flutter/material.dart';
import 'package:foodie/components/colors.dart';
import '../widgets/reusable_screen.dart';

class OrderingScreen extends StatelessWidget {
  const OrderingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.screenColor,
      body: SafeArea(
        child: ReusableScreen(
          title: 'Orders',
          bodyText: 'No orders yet',
          bodySubText: 'Hit the orange button down\nbelow to Create an order',
          bodyIcon: Icons.shopping_cart,
        ),
      ),
    );
  }
}
