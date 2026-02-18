import 'package:cartify/components/my_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              MyListTile(
                icon: Icons.home,
                title: 'Shop',
                onTap: () {
                  Navigator.pop(context);
                  context.go('/shop');
                },
              ),

              MyListTile(
                icon: Icons.shopping_cart,
                title: 'Cart',
                onTap: () {
                  Navigator.pop(context);
                  context.go('/cart');
                },
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: MyListTile(
              icon: Icons.exit_to_app,
              title: 'Exit',
              onTap: () {
                Navigator.pop(context);
                context.go('/');
              },
            ),
          ),
        ],
      ),
    );
  }
}
