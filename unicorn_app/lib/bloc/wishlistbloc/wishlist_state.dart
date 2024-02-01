part of 'wishlist_bloc.dart';

abstract class WishlistState extends Equatable {
  const WishlistState();

  @override
  List<Object> get props => [];
}

class WishlistLoading extends WishlistState {}

class WishlistLoaded extends WishlistState {
  WishlistModel? wishlist;

  WishlistLoaded({this.wishlist});
}

class WishlistError extends WishlistState {}
