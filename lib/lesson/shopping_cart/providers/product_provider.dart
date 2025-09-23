import 'package:flutter/material.dart';
import 'package:summer_flutter/lesson/shopping_cart/models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  final List<ProductModel> _products = [
    ProductModel(
      id: '1',
      name: 'Laptop',
      price: 20,
      icon: Icons.laptop,
    ),
    ProductModel(
      id: '2',
      name: 'Phone',
      price: 30,
      icon: Icons.phone_android,
    ),
    ProductModel(
      id: '3',
      name: 'Watch',
      price: 10,
      icon: Icons.watch,
    ),
    ProductModel(
      id: '4',
      name: 'Headphones',
      price: 25,
      icon: Icons.headphones,
    ),
  ];
  List<ProductModel> get products =>
      List.unmodifiable(_products);
}
