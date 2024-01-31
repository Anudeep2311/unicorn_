import 'package:flutter/material.dart';
import 'package:unicorn_app/widgets/widgets.dart';

class WishlistPage extends StatelessWidget {
  static const String routeName = '/wishlist';
  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const WishlistPage());
  }

  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Wishlist",
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
