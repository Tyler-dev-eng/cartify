import 'package:cartify/components/my_drawer.dart';
import 'package:cartify/components/product_tile.dart';
import 'package:cartify/providers/shop_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// STEP 3: Convert StatelessWidget to ConsumerWidget
/// ConsumerWidget allows us to access providers using 'ref'
///
/// What this does:
/// - ConsumerWidget extends StatelessWidget but adds 'ref' parameter
/// - ref.watch(shopProvider) reads the Shop instance from the provider
/// - ref.watch() also rebuilds the widget when the provider changes
/// - The Shop instance is now available to use in the widget

class ShopPage extends ConsumerWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shop = ref.watch(shopProvider); // Read the Shop from the provider

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Shop Page'),
      ),
      drawer: MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: ListView(
        children: [
          const SizedBox(height: 25),
          // shop subtitle
          Center(
            child: Text(
              "Select from our wide range of products",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),

          // product list
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: shop.shopProducts.map((product) {
                return ProductTile(product: product);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
