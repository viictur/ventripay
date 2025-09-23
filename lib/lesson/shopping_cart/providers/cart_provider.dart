import 'package:flutter/material.dart';
import 'package:summer_flutter/lesson/shopping_cart/models/cart_model.dart';
import 'package:summer_flutter/lesson/shopping_cart/models/product_model.dart';
import 'package:summer_flutter/lesson/shopping_cart/providers/product_provider.dart';

class CartProvider extends ChangeNotifier {
  final List<CartModel> _carts = [];

  List<CartModel> get carts => List.unmodifiable(_carts);

  int get cartCount =>
      _carts.fold(0, (sum, item) => sum + item.quantity);
  // sum + item.quantity

  double get totalPrice => _carts.fold(
    0,
    (sum, item) =>
        sum + (item.quantity * item.product.price),
  );

  void addCart(ProductModel product) {
    final existing = _carts.indexWhere(
      (vic) => vic.product.id == product.id,
    );
    if (existing >= 0) {
      _carts[existing].quantity++;
    } else {
      _carts.add(CartModel(product: product));
    }
    notifyListeners();
  }

  void removeCart(String pid) {
    _carts.removeWhere((item) => item.product.id == pid);
    notifyListeners();
  }

  void clear() {
    _carts.clear();
    notifyListeners();
  }

  void removeQuantity(ProductModel product) {
    final existing = _carts.indexWhere(
      (vic) => vic.product.id == product.id,
    );
    if (existing >= 0) {
      _carts[existing].quantity--;
    }
    notifyListeners();
  }
}
