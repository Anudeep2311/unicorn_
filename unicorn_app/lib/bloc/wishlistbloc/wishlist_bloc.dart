import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:unicorn_app/models/wishlist_model.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlisEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial());

  @override
  Stream<WishlistState> mapEventToState(
    WishlistEvent event,
  ) async* {}
}
