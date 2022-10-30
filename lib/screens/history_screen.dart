import 'package:flutter/material.dart';
import 'package:foodie/components/colors.dart';
import 'package:foodie/widgets/custom_appbar.dart';
import '../widgets/reusable_screen.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: Icons.arrow_back_ios,
        leaddingOnTap: () {},
        title: 'History',
      ),
      backgroundColor: AppColors.screenColor,
      body: const SafeArea(
        child: ReusableScreen(
          bodyText: 'No history yet',
          bodySubText: 'Hit the orange button down \nbelow to Create an order',
          imageUrl: 'assets/images/Vector (10).png',
        ),
      ),
    );
  }
}
