import 'package:flutter/material.dart';
import 'package:unicorn_app/models/models.dart';
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
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Wishlist",
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
      body: GridView.builder(
        shrinkWrap: false,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.6,
          mainAxisSpacing: 10,
        ),
        itemCount: ProductModel.products.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: ProductCard(
              product: ProductModel.products[index],
              widthFactor: 1.1,
              leftPosition: 250,
              isWishlist: true,
            ),
          );
        },
      ),
    );
  }
}
