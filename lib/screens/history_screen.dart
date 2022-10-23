import 'package:flutter/material.dart';
import 'package:foodie/components/colors.dart';
import '../widgets/reusable_screen.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.screenColor,
      body: SafeArea(
        child: ReusableScreen(
          title: 'History',
          bodyText: 'No history yet',
          bodySubText: 'Hit the orange button down \nbelow to Create an order',
          bodyIcon: Icons.border_outer_rounded,
        ),
      ),
    );
  }
}
