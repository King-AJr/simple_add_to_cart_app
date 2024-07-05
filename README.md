Sure, here’s an updated README that explains the algorithm behind the code and how each component works together:

---

# Simple eCommerce App

This is a simple eCommerce application built with Flutter. The app allows users to view products, add them to a cart, and manage the cart by adding or removing products. It also supports light and dark themes and does not use any external libraries.

## Features

- Display a list of products
- Add products to the cart
- Remove products from the cart
- Increase or decrease the quantity of products in the cart
- View total items and total price in the cart
- Custom themes for light and dark modes

## Project Structure

```
app_projects/simple_ecommerce_app
│
├── .dart_tool/
├── .idea/
├── android/
├── assets/
├── build/
├── ios/
├── lib/
│   ├── components/
│   ├── data/
│   ├── models/
│   ├── providers/
│   ├── repositories/
│   ├── services/
│   ├── util/
│   │   ├── constants/
│   │   │   ├── colors.dart
│   │   │   ├── sizes.dart
│   │   ├── themes/
│   │   ├── viewmodels/
│   │   ├── views/
│   │   │   ├── cart_view.dart
│   │   │   ├── product_list_view.dart
│   │   ├── main.dart
├── linux/
├── macos/
├── test/
├── web/
├── windows/
├── .gitignore
├── .metadata
├── analysis_options.yaml
├── pubspec.lock
```

## Screenshots

### Product List View

**Dark Mode**
<div>
    <img src="https://github.com/King-AJr/simple_add_to_cart_app/blob/main/Screenshot%202024-07-05%20at%2019.46.42.png"/>
</div>

**Light Mode**
<div>
    <img src="https://github.com/King-AJr/simple_add_to_cart_app/blob/main/Screenshot%202024-07-05%20at%2019.44.18.png"/>
</div>


### Cart Management

The cart is managed using a `Cart` class that extends `ChangeNotifier`. The `Cart` class maintains a list of `CartItem` objects, each representing a product added to the cart along with its quantity.

#### Adding a Product to the Cart
When a product is added to the cart, the algorithm first checks if the product is already in the cart.
  - If it is, it increments the quantity of that product.
  - If it is not, it creates a new `CartItem` for that product with a quantity of 1 and adds it to the list.
This ensures that each product is uniquely represented in the cart and its quantity can be managed individually.

#### Removing a Product from the Cart
When a product is removed from the cart, the algorithm removes the corresponding `CartItem` from the list based on the product ID.
This operation ensures that the cart no longer contains any instance of the removed product.

#### Increasing/Decreasing the Quantity of a Product
When the quantity of a product is increased or decreased, the algorithm finds the corresponding `CartItem` and adjusts its quantity accordingly.
  - If decreasing the quantity results in a quantity of zero, the product is removed from the cart.
This allows users to adjust the quantity of products in the cart dynamically, and automatically removes the product if the quantity is zero.

#### Calculating Total Items and Total Price
The total number of items is the length of the `CartItem` list, and the total price is calculated by summing the price of each product multiplied by its quantity.
This provides a straightforward way to get the overall count of distinct products and the total cost of the cart’s contents.

### Cart Provider

The `CartProvider` is an `InheritedWidget` that provides the `Cart` instance to the widget tree. This allows any widget within the tree to access and interact with the cart.

#### How It Works:
- The `CartProvider` is instantiated at the top level of the widget tree (in `main.dart`), wrapping the `MaterialApp`.
- Widgets can access the `Cart` instance through the `CartProvider` using the `of` method.
- When the cart is updated, the `CartProvider` notifies its dependents to rebuild, ensuring the UI reflects the current state of the cart.

### Views

#### Product List View
Displays the list of available products. Users can browse products and add them to the cart.

#### Cart View
Displays the contents of the cart. Users can view the products in their cart, adjust quantities, and proceed to checkout.

### Themes

The application supports light and dark themes, which are defined in a custom theme class (`MyAppTheme`). The `theme` and `darkTheme` properties of the `MaterialApp` are set to these custom themes, allowing the app to switch between light and dark modes based on system settings.

## How It All Comes Together

1. **Initialization:** The app initializes the `Cart` instance and wraps the `MaterialApp` with the `CartProvider` to provide the cart context.
2. **Product Listing:** The `ProductListScreen` displays the products and allows users to add them to the cart. The cart operations update the `Cart` instance, which notifies listeners.
3. **Cart Management:** The `CartScreen` displays the contents of the cart, allowing users to manage product quantities and proceed to checkout.
4. **Theming:** The app applies custom light and dark themes based on system settings, enhancing the user experience.

## How to Run

1. **Clone the repository:**
   ```bash
   git clone https://github.com/King-AJr/simple_add_to_cart_app.git
   cd simple_ecommerce_app
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the app:**
   ```bash
   flutter run
   ```

## Conclusion

This project demonstrates a simple eCommerce application built with Flutter, focusing on state management using `InheritedWidget` and `ChangeNotifier`. It also shows how to implement custom themes for light and dark modes without using external libraries.