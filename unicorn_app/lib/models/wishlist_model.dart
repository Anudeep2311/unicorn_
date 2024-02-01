import 'package:equatable/equatable.dart';
import 'package:unicorn_app/models/product_model.dart';

class WishlistModel extends Equatable {
  final List<ProductModel> products;

  const WishlistModel({this.products = const <ProductModel>[]});

  @override
  List<Object?> get props => [products];
}
