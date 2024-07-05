import 'package:flutter/material.dart';
import '../models/products.dart';
import '../data/static_products.dart';

class ProductViewModel with ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products => _products;

  void fetchProducts() {
    _products = staticProducts;
    notifyListeners();
  }
}
