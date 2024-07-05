import 'package:flutter/material.dart';
import 'package:simple_ecommerce_app/models/products.dart';
import 'package:simple_ecommerce_app/providers/cart_provider.dart';
import 'package:simple_ecommerce_app/util/constants/sizes.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final VoidCallback onAddToCart;

  const ProductItem(
      {super.key, required this.product, required this.onAddToCart});
  @override
  Widget build(BuildContext context) {
    final cartProvider = CartProvider.of(context);

    return SizedBox(
      height: 215,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: Card(
          elevation: 0.2,
          color: Colors.white,
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(Sizes.allRoundPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: Theme.of(context).textTheme.bodyLarge,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        product.description,
                        style: Theme.of(context).textTheme.labelLarge,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 10),
                      Text('\$${product.price.toString()}',
                          style: Theme.of(context).textTheme.bodyMedium),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {
                          cartProvider?.cart.addProduct(product);
                          (context as Element).markNeedsBuild();
                          Navigator.pushNamed(context, '/cart');
                        },
                        child: Text('Add to Cart',
                            style: Theme.of(context).textTheme.headlineSmall),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: AssetImage(product.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
