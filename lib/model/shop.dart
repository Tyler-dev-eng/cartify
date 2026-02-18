import 'package:cartify/model/product.dart';

class Shop {
  // products for sale
  final List<Product> _shopProducts = [
    Product(
      name: 'Chuck Taylor All Star 90s Throwback',
      price: 1699.95,
      description: 'A timeless classic updated for modern comfort.',
      imagePath: 'assets/images/1.png',
    ),
    Product(
      name: 'Chuck Taylor All Star 90s Throwback',
      price: 1599.95,
      description: 'A timeless classic updated for modern comfort.',
      imagePath: 'assets/images/2.png',
    ),
    Product(
      name: 'Chuck Taylor All Star 90s Throwback',
      price: 1699.95,
      description: 'A timeless classic updated for modern comfort.',
      imagePath: 'assets/images/3.png',
    ),
    Product(
      name: 'Chuck Taylor All Star 90s Throwback',
      price: 1599.95,
      description: 'A timeless classic updated for modern comfort.',
      imagePath: 'assets/images/4.png',
    ),
    Product(
      name: 'Chuck 70 Snakeskin Print',
      price: 2599.95,
      description: 'Premium Chucks in snakeskin- Lethal.',
      imagePath: 'assets/images/5.png',
    ),
    Product(
      name: 'Chuck 70 Snakeskin Print',
      price: 2499.95,
      description: 'Premium Chucks in snakeskin- Lethal.',
      imagePath: 'assets/images/6.png',
    ),
  ];

  // user cart
  List<Product> _userCart = [];

  //get product list
  List<Product> get shopProducts => _shopProducts;

  // get user cart
  List<Product> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Product product) {
    _userCart.add(product);
  }

  // remove item from cart
  void removeItemFromCart(Product product) {
    _userCart.remove(product);
  }

  // create a copy of Shop with updated cart
  Shop copyWith({List<Product>? userCart}) {
    final shop = Shop();
    shop._userCart = userCart ?? List.from(_userCart);
    return shop;
  }
}
