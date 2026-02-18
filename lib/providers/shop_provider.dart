import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cartify/model/shop.dart';
import 'package:cartify/model/product.dart';

/// STEP 2: Create a StateNotifierProvider for Shop
/// A StateNotifierProvider allows us to manage mutable state that can be updated
/// This provider creates a single Shop instance that will be shared across the app
///
/// What this does:
/// - StateNotifierProvider creates a provider that manages mutable state
/// - ShopNotifier extends StateNotifier to handle state changes
/// - When we call methods like addItemToCart, it notifies all listening widgets
/// - Any widget can access this Shop by reading shopProvider

class ShopNotifier extends StateNotifier<Shop> {
  ShopNotifier() : super(Shop());

  void addItemToCart(Product product) {
    final updatedCart = List<Product>.from(state.userCart)..add(product);
    state = state.copyWith(userCart: updatedCart);
  }

  void removeItemFromCart(Product product) {
    final updatedCart = List<Product>.from(state.userCart)..remove(product);
    state = state.copyWith(userCart: updatedCart);
  }
}

final shopProvider = StateNotifierProvider<ShopNotifier, Shop>((ref) {
  return ShopNotifier();
});
