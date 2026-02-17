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
        children: [
          // drawer header: logo
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

          // shop tile
          MyListTile(
            icon: Icons.home,
            title: 'Shop',
            onTap: () => context.go('/shop'),
          ),

          // cart tile

          // exit tile
        ],
      ),
    );
  }
}
