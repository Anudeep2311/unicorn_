import 'package:flutter/material.dart';
import 'package:unicorn_app/models/models.dart';
import 'package:unicorn_app/widgets/widgets.dart';

class ProductScroll extends StatelessWidget {
  final List<ProductModel> products;
  const ProductScroll({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        height: 250,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 5),
              child: ProductCard(
                product: products[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
