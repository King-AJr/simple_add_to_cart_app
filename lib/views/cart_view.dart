import 'package:flutter/material.dart';
import 'package:simple_ecommerce_app/components/cart_item.dart';
import 'package:simple_ecommerce_app/models/cart_model.dart'; // Import your Cart model

class CartScreen extends StatefulWidget {
  final Cart cart;

  CartScreen({required this.cart});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    super.initState();
    widget.cart.addListener(_updateCart);
  }

  @override
  void dispose() {
    widget.cart.removeListener(_updateCart);
    super.dispose();
  }

  void _updateCart() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: ListView.builder(
        itemCount: widget.cart.totalItems,
        itemBuilder: (context, index) {
          final cartItem = widget.cart.items[index];
          return CartListItem(cartItem: cartItem);
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
        child: SizedBox(
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            onPressed: widget.cart.totalItems == 0
                ? null
                : () {
                    Navigator.pushNamed(context, '/success');
                  },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFDB3022),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Text(
              'CHECKOUT',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
