import 'package:flutter/material.dart';
import 'package:unicorn_app/widgets/widgets.dart';

class ProductPage extends StatelessWidget {
  static const String routeName = '/product';
  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const ProductPage());
  }

  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Krist",
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
