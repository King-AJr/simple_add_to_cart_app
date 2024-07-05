import "package:flutter/material.dart";
import "package:simple_ecommerce_app/models/cart_model.dart";
import "package:simple_ecommerce_app/providers/cart_provider.dart";
import "package:simple_ecommerce_app/util/constants/colors.dart";
import "package:simple_ecommerce_app/util/constants/sizes.dart";

class CartListItem extends StatelessWidget {
  final CartItem cartItem;

  const CartListItem({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;
    final cartProvider = CartProvider.of(context);

    return Padding(
      padding: const EdgeInsets.all(Sizes.allRoundPadding),
      child: Container(
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: darkMode ? MyColors.colorDark : Colors.white,
        ),
        child: Card(
          color: darkMode ? MyColors.colorDark : Colors.white,
          elevation: 0.1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage(cartItem.product.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 13,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(cartItem.product.name,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.labelMedium),
                          IconButton(
                            onPressed: () {
                              cartProvider?.cart
                                  .removeProduct(cartItem.product);
                              (context as Element).markNeedsBuild();
                            },
                            icon: const Icon(Icons.dangerous_outlined,
                                color: Colors.grey, size: Sizes.iconSize),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ElevatedButton.icon(
                                onPressed: () {
                                  cartProvider?.cart
                                      .decreaseQuantity(cartItem.product);
                                  (context as Element).markNeedsBuild();
                                },
                                icon: Icon(Icons.remove,
                                    color: darkMode
                                        ? MyColors.colorDark
                                        : Colors.white,
                                    size: Sizes.iconSize),
                                label: const Text(''),
                                style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 4, 4, 4),
                                  shape: const CircleBorder(),
                                  backgroundColor: darkMode
                                      ? Colors.white
                                      : MyColors.colorDark,
                                ),
                              ),
                              Text(
                                "${cartItem.quantity}",
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                              ElevatedButton.icon(
                                onPressed: () {
                                  cartProvider?.cart
                                      .increaseQuantity(cartItem.product);
                                  (context as Element).markNeedsBuild();
                                },
                                icon: Icon(Icons.add,
                                    color: darkMode
                                        ? MyColors.colorDark
                                        : Colors.white,
                                    size: Sizes.iconSize),
                                label: const Text(''),
                                style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 4, 4, 4),
                                  shape: const CircleBorder(),
                                  backgroundColor: darkMode
                                      ? Colors.white
                                      : MyColors.colorDark,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '\$${(cartItem.quantity * cartItem.product.price).toString()}',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ],
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
