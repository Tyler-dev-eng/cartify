import 'package:cartify/model/product.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  const ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // product image
          Icon(Icons.favorite),

          // product name
          Text(product.name),

          // product description
          Text(product.description),

          // product price
          Text(product.price.toStringAsFixed(2)),

          // add to cart button
        ],
      ),
    );
  }
}
