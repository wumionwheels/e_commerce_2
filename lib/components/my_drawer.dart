import 'package:e_commerce_2/components/my_list_tile.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          DrawerHeader(
            decoration: UnderlineTabIndicator(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.surface,
                width: 0,
              ),
            ),
            child: Center(
              child: Icon(
                      Icons.shopping_cart_rounded, 
                      color: Theme.of(context).colorScheme.secondary, 
                      size: 72,
                    ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    MyListTile(
                      text: 'Shop', 
                      icon: Icons.home_rounded, 
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/shop_page');
                      }
                    ),
                    MyListTile(
                      text: 'Cart', 
                      icon: Icons.shopping_cart_rounded, 
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/cart_page');
                      }
                    ),
                  ],
                ),
                MyListTile(
                  text: 'Logout', 
                  icon: Icons.logout_rounded, 
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/intro_page');
                  }
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}