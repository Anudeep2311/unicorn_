part of 'wishlist_bloc.dart';

abstract class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object> get props => [];
}

class StartWishList extends WishlistEvent {}

class AddWishlistProduct extends WishlistEvent {
  final ProductModel prodcut;

  const AddWishlistProduct(this.prodcut);

  @override
  List<Object> get props => [prodcut];
}

class RemoveWishlistProduct extends WishlistEvent {
  final ProductModel product;

  const RemoveWishlistProduct(this.product);

  @override
  List<Object> get props => [product];
}
