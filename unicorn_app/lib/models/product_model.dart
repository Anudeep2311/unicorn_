import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final String name;
  final String category;
  final String imgUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const ProductModel({
    required this.name,
    required this.category,
    required this.imgUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        name,
        category,
        imgUrl,
        price,
        isPopular,
        isRecommended,
      ];

  static List<ProductModel> products = [
    const ProductModel(
      name: 'US Polo Hoodie',
      category: 'Casual Wear',
      imgUrl:
          'https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?q=80&w=1920&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 3700,
      isRecommended: true,
      isPopular: false,
    ),
    const ProductModel(
      name: 'PRADA Bag',
      category: 'Other',
      imgUrl:
          'https://images.unsplash.com/photo-1590739225287-bd31519780c3?q=80&w=1922&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 2699,
      isRecommended: false,
      isPopular: true,
    ),
    const ProductModel(
      name: 'Titan Watch',
      category: 'Other',
      imgUrl:
          'https://images.unsplash.com/photo-1590736969955-71cc94801759?q=80&w=1854&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 3399,
      isRecommended: true,
      isPopular: false,
    ),
    const ProductModel(
      name: 'Puma White',
      category: 'Other',
      imgUrl:
          'https://images.unsplash.com/photo-1628383365383-bc802eb9353a?q=80&w=1915&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 2800,
      isRecommended: true,
      isPopular: false,
    ),
    const ProductModel(
      name: 'Nike Kids',
      category: 'Kids Wear',
      imgUrl:
          'https://images.unsplash.com/flagged/photo-1555895312-bbc472c964f3?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 1799,
      isRecommended: true,
      isPopular: false,
    ),
    const ProductModel(
      name: 'Tripple Jacket',
      category: 'Ethnic Wear',
      imgUrl:
          'https://images.unsplash.com/photo-1600574691453-499962cc0611?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 3700,
      isRecommended: true,
      isPopular: true,
    ),
  ];
}
