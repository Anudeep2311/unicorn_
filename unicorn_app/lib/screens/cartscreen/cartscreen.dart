import 'package:flutter/material.dart';
import 'package:unicorn_app/widgets/widgets.dart';

class CartPage extends StatelessWidget {
  static const String routeName = '/cart';
  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const CartPage());
  }

  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Cart",
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
