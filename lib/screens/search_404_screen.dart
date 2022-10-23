import 'package:flutter/material.dart';

import '../components/constant.dart';

class Search404Screen extends StatelessWidget {
  const Search404Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50.0, top: 10),
            child: Row(
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                ),
                const SizedBox(
                  width: 100,
                ),
                Text(
                  'Spicy chieckns',
                  style: AppConstant.textStyle(),
                )
              ],
            ),
          ),
          AppConstant.searchScreenSpacer(height: 220),
          Center(
            child: Column(
              children: [
                const Icon(
                  Icons.search,
                  size: 200,
                  color: Color(0XFFC7C7C7),
                ),
                Text(
                  'Item not found',
                  style: AppConstant.textStyle(size: 28),
                ),
                AppConstant.searchScreenSpacer(height: 17),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 98),
                  child: Opacity(
                    opacity: 0.57,
                    child: Text(
                      'Try searching the item with a different keyword.',
                      textAlign: TextAlign.center,
                      style: AppConstant.textStyle(
                          size: 17, weight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
