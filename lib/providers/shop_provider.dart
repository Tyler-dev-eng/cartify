import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cartify/model/shop.dart';

/// STEP 2: Create a Provider for Shop
/// A Provider is like a global variable that any widget can access
/// This provider creates a single Shop instance that will be shared across the app
///
/// What this does:
/// - final shopProvider = Provider`<Shop>` creates a provider that returns a Shop instance
/// - The function (ref) => Shop() creates a new Shop when first accessed
/// - Once created, the same Shop instance is reused (singleton pattern)
/// - Any widget can access this Shop by reading shopProvider

final shopProvider = Provider<Shop>((ref) {
  return Shop();
});
