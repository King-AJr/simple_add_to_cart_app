import 'package:flutter/material.dart';
import 'package:simple_ecommerce_app/models/cart_model.dart';
import 'package:simple_ecommerce_app/providers/cart_provider.dart';
import 'package:simple_ecommerce_app/util/themes/theme.dart';
import 'package:simple_ecommerce_app/views/cart_view.dart';
import 'package:simple_ecommerce_app/views/product_list_view.dart';
import 'package:simple_ecommerce_app/views/success_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Cart cart = Cart();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CartProvider(
      cart: cart,
      child: MaterialApp(
        title: 'My Flutter App',
        themeMode: ThemeMode.system,
        theme: MyAppTheme.lightTheme,
        darkTheme: MyAppTheme.darkTheme,
        initialRoute: '/home',
        routes: {
          '/home': (context) => const ProductListScreen(),
          '/cart': (context) => CartScreen(cart: cart),
          '/success': (context) => const SuccessScreen()
        },
      ),
    );
  }
}
