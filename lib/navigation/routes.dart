import 'package:cartify/pages/intro_page.dart';
import 'package:cartify/pages/shop_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const IntroPage()),
    GoRoute(path: '/shop', builder: (context, state) => const ShopPage()),
  ],
);
