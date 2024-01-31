import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:unicorn_app/models/models.dart';
import 'package:unicorn_app/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const HomePage());
  }

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Krist",
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enlargeCenterPage: true,
                ),
                items: Category.categories
                    .map((category) => HeroCard(category: category))
                    .toList(),
              ),
            ),
            const SizedBox(height: 8),
            const SectionHeader(title: 'OUR BESTSELLER'),
            const SizedBox(
              height: 8,
            ),
            ProductScroll(
              products: ProductModel.products
                  .where((product) => product.isRecommended)
                  .toList(),
            ),
            const SizedBox(height: 16),
            const SectionHeader(title: 'MOST POPULAR'),
            const SizedBox(
              height: 8,
            ),
            ProductScroll(
              products: ProductModel.products
                  .where((product) => product.isPopular)
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
