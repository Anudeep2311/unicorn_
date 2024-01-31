import 'package:flutter/material.dart';
import 'package:unicorn_app/models/models.dart';
import 'package:unicorn_app/screens/catalogscreen/catalog_screen.dart';
import 'package:unicorn_app/screens/productscreen/product_screen.dart';
import 'package:unicorn_app/screens/screens.dart';
import 'package:unicorn_app/screens/wishlist/wishlist_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomePage.route();
      case HomePage.routeName:
        return HomePage.route();
      case CartPage.routeName:
        return CartPage.route();
      case ProductPage.routeName:
        return ProductPage.route();
      case WishlistPage.routeName:
        return WishlistPage.route();
      case CatalogPage.routeName:
        return CatalogPage.route(category: settings.arguments as Category);

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
      ),
    );
  }
}
