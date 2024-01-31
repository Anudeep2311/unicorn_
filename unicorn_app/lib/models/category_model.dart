import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imgUrl;

  const Category({required this.name, required this.imgUrl});

  @override
  List<Object?> get props => [name, imgUrl];

  static List<Category> categories = [
    const Category(
        name: 'Casual Wear',
        imgUrl:
            'https://images.unsplash.com/photo-1564859228273-274232fdb516?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    const Category(
        name: 'Western Wear',
        imgUrl:
            'https://images.unsplash.com/photo-1635857770882-3110be80bff9?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    const Category(
        name: 'Ethnic Wear',
        imgUrl:
            'https://images.unsplash.com/photo-1571908598047-9b0049221e4e?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    const Category(
        name: 'Kids Wear',
        imgUrl:
            'https://images.unsplash.com/photo-1503944583220-79d8926ad5e2?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    const Category(
        name: 'Other',
        imgUrl:
            'https://images.unsplash.com/photo-1589363460779-cd717d2ed8fa?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
  ];
}
