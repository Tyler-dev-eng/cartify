import 'package:cartify/model/product.dart';

class Shop {
  // products for sale
  final List<Product> _shopProducts = [
    Product(
      name: 'Product 1',
      price: 100,
      description: 'Description 1',
      imagePath: 'assets/images/product1.jpg',
    ),
    Product(
      name: 'Product 2',
      price: 200,
      description: 'Description 2',
      imagePath: 'assets/images/product2.jpg',
    ),
    Product(
      name: 'Product 3',
      price: 300,
      description: 'Description 3',
      imagePath: 'assets/images/product3.jpg',
    ),
    Product(
      name: 'Product 4',
      price: 400,
      description: 'Description 4',
      imagePath: 'assets/images/product4.jpg',
    ),
    Product(
      name: 'Product 5',
      price: 500,
      description: 'Description 5',
      imagePath: 'assets/images/product5.jpg',
    ),
    Product(
      name: 'Product 6',
      price: 600,
      description: 'Description 6',
      imagePath: 'assets/images/product6.jpg',
    ),
  ];

  // user cart
  final List<Product> _userCart = [];

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
}
