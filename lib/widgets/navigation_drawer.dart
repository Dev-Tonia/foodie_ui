import 'package:flutter/material.dart';
import 'package:foodie/components/constant.dart';

import '../components/colors.dart';
import 'drawer_list_tile.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.only(top: 160),
        color: AppColors.primaryColor,
        child: ListView(
          children: [
            DrawerListTile(
              imageUrl: 'assets/images/Vector (3).png',
              title: 'Profile',
              onTap: () {},
            ),
            DrawerListTile.drawerItemDivider(),
            DrawerListTile(
              imageUrl: 'assets/images/Vector (4).png',
              title: 'orders',
              onTap: () {},
            ),
            DrawerListTile.drawerItemDivider(),
            DrawerListTile(
              imageUrl: 'assets/images/Vector (5).png',
              title: 'offer and promo',
              onTap: () {},
            ),
            DrawerListTile.drawerItemDivider(),
            DrawerListTile(
              imageUrl: 'assets/images/Vector (6).png',
              title: 'Privacy policy',
              onTap: () {},
            ),
            DrawerListTile.drawerItemDivider(),
            DrawerListTile(
              imageUrl: 'assets/images/Vector (7).png',
              title: 'Security',
              onTap: () {},
            ),
            AppConstant.searchScreenSpacer(height: 150),
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 41),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      'Sign-out',
                      style: AppConstant.textStyle(color: Colors.white),
                    ),
                    AppConstant.searchScreenSpacer(width: 5),
                    const Icon(
                      Icons.east,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
