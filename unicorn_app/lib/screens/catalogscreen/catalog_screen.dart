import 'package:flutter/material.dart';
import 'package:unicorn_app/models/models.dart';
import 'package:unicorn_app/widgets/widgets.dart';

class CatalogPage extends StatelessWidget {
  static const String routeName = '/catalog';
  static Route route({required Category category}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => CatalogPage(category: category),
    );
  }

  final Category category;
  const CatalogPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: category.name,
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
      body: ProductCard(
        product: ProductModel.products[0],
      ),
    );
  }
}
