import 'package:flutter/material.dart';
import 'package:simple_ecommerce_app/components/bottom_navigation_bar.dart';
import 'package:simple_ecommerce_app/components/product_list_item.dart';
import 'package:simple_ecommerce_app/models/products.dart';
import 'package:simple_ecommerce_app/data/static_products.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<Product> _products = [];

  @override
  void initState() {
    super.initState();
    _fetchProducts();
  }

  void _fetchProducts() {
    setState(() {
      _products = staticProducts;
    });
  }

  void _onAddToCart(Product product) {
    // Implement the logic to add the product to the cart
    print('${product.name} added to cart');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: _products.length,
          itemBuilder: (context, index) {
            final product = _products[index];
            return ProductItem(
              product: product,
              onAddToCart: () => _onAddToCart(product),
            );
          },
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
