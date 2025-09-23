import 'package:flutter/widgets.dart';

class ProductModel {
  final String id;
  final String name;
  final double price;
  final IconData icon;
  final String? feature;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.icon,
    this.feature = '',
  });
}
