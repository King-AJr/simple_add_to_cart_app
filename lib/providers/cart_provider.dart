import 'package:flutter/material.dart';
import 'package:simple_ecommerce_app/models/cart_model.dart';

class CartProvider extends InheritedWidget {
  final Cart cart;
  final Widget child;

  CartProvider({required this.cart, required this.child}) : super(child: child);

  static CartProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CartProvider>();
  }

  @override
  bool updateShouldNotify(CartProvider oldWidget) {
    return cart != oldWidget.cart;
  }
}
