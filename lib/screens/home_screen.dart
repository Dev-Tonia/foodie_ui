import 'package:flutter/material.dart';
import 'package:foodie/components/colors.dart';
import 'package:foodie/widgets/input_form.dart';
import 'package:foodie/widgets/navigation_drawer.dart';
import '../widgets/home_card.dart';
import '../widgets/home_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var currentIndex = 0;
    return SafeArea(
      child: Scaffold(
        drawer: const NavigationDrawer(),
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 50),
              child: Icon(
                Icons.shopping_cart,
              ),
            ),
          ],
        ),
        backgroundColor: AppColors.screenColor,
        body: Container(
          padding: const EdgeInsets.only(left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 42,
                  left: 4.3,
                  bottom: 40,
                  top: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [],
                ),
              ),
              const Text(
                'Delicious \nfood for you',
                style: TextStyle(
                    fontFamily: 'SF Pro Rounded',
                    fontSize: 34,
                    height: 1.2,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 28,
              ),
              InputField(
                onChanged: (x) {},
                filled: true,
                hintText: 'Search',
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                inputBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HomeText(
                      title: 'Food',
                    ),
                    HomeText(
                      title: 'Drinks',
                    ),
                    HomeText(
                      title: 'Snacks',
                    ),
                    HomeText(
                      title: 'Sauce',
                    ),
                    HomeText(
                      title: 'Snacks',
                    ),
                    HomeText(
                      title: 'Sauce',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    HomeCard(
                      imageString: 'assets/images/image 2.png',
                      title: 'Veggie \ntomato mix',
                      price: 'N1,900',
                      width: 220,
                      height: 270,
                    ),
                    SizedBox(
                      width: 34,
                    ),
                    HomeCard(
                      imageString: 'assets/images/image 2.png',
                      title: 'Spicy fish \nsauce',
                      price: 'N2,300',
                      width: 220,
                      height: 270,
                    ),
                    SizedBox(
                      width: 34,
                    ),
                    HomeCard(
                      imageString: 'assets/images/image 2.png',
                      title: 'Veggie \ntomato mix',
                      price: 'N1,900',
                      width: 220,
                      height: 270,
                    ),
                    SizedBox(
                      width: 34,
                    ),
                    HomeCard(
                      imageString: 'assets/images/image 2.png',
                      title: 'Spicy fish \nsauce',
                      price: 'N2,300',
                      width: 220,
                      height: 270,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.screenColor,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: const Color.fromARGB(255, 88, 87, 87),
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
              ),
              label: '',
            )
          ],
        ),
      ),
    );
  }
}
