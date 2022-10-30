import 'package:flutter/material.dart';
import 'package:foodie/components/colors.dart';
import 'package:foodie/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: AppColors.screenColor,
            ),
      ),
      home: const WelcomeScreen(),
    );
  }
}
