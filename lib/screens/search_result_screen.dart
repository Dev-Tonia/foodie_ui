import 'package:flutter/material.dart';
import 'package:foodie/components/colors.dart';
import 'package:foodie/components/constant.dart';
import 'package:foodie/widgets/custom_appbar.dart';
import 'package:foodie/widgets/home_card.dart';
import 'package:foodie/widgets/search_card.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomAppBar(
            leaddingOnTap: () {},
            leadingIcon: Icons.arrow_back_ios,
            title: 'Spicy chieckns',
          ),
          backgroundColor: AppColors.screenColor,
          body: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffF9F9F9),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 34, left: 34, right: 34),
                    child: ListView(
                      children: [
                        const Text(
                          'Found  6 results',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                              height: 1.2,
                              fontFamily: 'SF Pro Rounded'),
                        ),
                        const SizedBox(
                          height: 37,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                const SearchCard(
                                  title: 'Veggie tomato mix',
                                  price: 'N1900',
                                  imageString: 'assets/images/image 5.png',
                                ),
                                AppConstant.searchScreenSpacer(),
                                const SearchCard(
                                  title: 'Fried chicken m.',
                                  price: 'N1900',
                                  imageString: 'assets/images/image 3.png',
                                ),
                                AppConstant.searchScreenSpacer(),
                                const SearchCard(
                                  title: 'Veggie tomato mix',
                                  price: 'N1900',
                                  imageString: 'assets/images/image 5.png',
                                ),
                                AppConstant.searchScreenSpacer(),
                                const SearchCard(
                                  title: 'Fried chicken m.',
                                  price: 'N1900',
                                  imageString: 'assets/images/image 3.png',
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 53,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 54.0),
                              child: Column(
                                children: [
                                  const SearchCard(
                                    title: 'Egg and cucmber',
                                    price: 'N1900',
                                    imageString: 'assets/images/image .png',
                                  ),
                                  AppConstant.searchScreenSpacer(),
                                  const SearchCard(
                                    title: 'Moi-moi and ekpa.',
                                    price: 'N1900',
                                    imageString: 'assets/images/image 4.png',
                                  ),
                                  AppConstant.searchScreenSpacer(),
                                  const SearchCard(
                                    title: 'Egg and cucmber',
                                    price: 'N1900',
                                    imageString: 'assets/images/image .png',
                                  ),
                                  AppConstant.searchScreenSpacer(),
                                  const SearchCard(
                                    title: 'Moi-moi and ekpa.',
                                    price: 'N1900',
                                    imageString: 'assets/images/image 4.png',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
