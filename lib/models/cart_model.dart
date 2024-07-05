import 'package:flutter/material.dart';
import 'package:simple_ecommerce_app/models/products.dart';

class Cart with ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void addProduct(Product product) {
    for (var item in items) {
      if (item.product.id == product.id) {
        item.quantity++;
        notifyListeners();
        return;
      }
    }
    items.add(CartItem(product: product, quantity: 1));
    notifyListeners();
  }

  void removeProduct(Product product) {
    items.removeWhere((item) => item.product.id == product.id);
    notifyListeners();
  }

  void increaseQuantity(Product product) {
    for (var item in items) {
      if (item.product.id == product.id) {
        item.quantity++;
        notifyListeners(); 
        return;
      }
    }
  }

  void decreaseQuantity(Product product) {
    for (var item in items) {
      if (item.product.id == product.id) {
        item.quantity--;
        if (item.quantity == 0) {
          removeProduct(product);
        }
        notifyListeners();
        return;
      }
    }
  }

  int get totalItems => items.length;

  double get totalPrice => items.fold(
      0, (total, current) => total + current.product.price * current.quantity);
}

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, required this.quantity});
}
