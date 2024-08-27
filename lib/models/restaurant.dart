import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mealdeal/models/cart_item.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    Food(
      name: "Classic Cheeseburger",
      description: "A juicy meaty patty with melted cheese cheddar.",
      imagePath: "assets/images/cheeseburger.png",
      price: 2.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 2.24),
        Addon(name: "Bacon", price: 2.99),
        Addon(name: "Avacado", price: 3.99),
      ],
    ),
    Food(
      name: "Hamburger",
      description:
          "A juicy, perfectly seasoned beef patty, grilled to your desired level of doneness and fresh onions..",
      imagePath: "assets/images/hamburger.png",
      price: 2.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 2.99),
        Addon(name: "Grilled Onions", price: 1.99),
        Addon(name: "Avacado", price: 3.99),
      ],
    ),
    Food(
      name: "Aloo Tikki Burger",
      description:
          " A delicious vegetarian twist on the classic burger. This delightful creation features a spiced potato.",
      imagePath: "assets/images/Alootikki.png",
      price: 1.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 2.99),
        Addon(name: "Extra Paneer", price: 3.99),
        Addon(name: "Double Patty", price: 2.99),
      ],
    ),
    Food(
      name: "Chicken Maharaja Burger",
      description:
          "Experience royal indulgence with our Chicken Maharaja Burger.",
      imagePath: "assets/images/chickenmaharaja.png",
      price: 3.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese Slice", price: 0.99),
        Addon(name: "Double Patty", price: 1.99),
        Addon(name: "Double Chicken", price: 2.99),
      ],
    ),
    Food(
      name: "BaconBurger",
      description: "Savor the creamy delight of our premium ice cream.",
      imagePath: "assets/images/baconburgir.png",
      price: 1.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Bacon", price: 2.99),
        Addon(name: "Extra Mustard", price: 1.99),
        Addon(name: "Extra Mayo", price: 2.99),
      ],
    ),
    Food(
      name: "Macarons",
      description:
          "Indulge in the exquisite taste of our handcrafted macarons.",
      imagePath: "assets/images/macarons.png",
      price: 4.99,
      category: FoodCategory.dessert,
      availableAddons: [
        Addon(name: "Extra Macarons Cup", price: 1.99),
        Addon(name: "chococlate CupCake", price: 1.99),
        Addon(name: "Chocolate Fudge", price: 2.99),
      ],
    ),
    Food(
      name: "Chocolate Shake",
      description: "Indulge in our decadent Chocolate Shake.",
      imagePath: "assets/images/chocoshake.png",
      price: 2.99,
      category: FoodCategory.dessert,
      availableAddons: [
        Addon(name: "Extra Chocolate", price: 0.99),
        Addon(name: "Extra scoop", price: 1.99),
        Addon(name: "Extra Candies", price: 1.99),
      ],
    ),
    Food(
      name: "Vanilla Shake",
      description:
          "Enjoy the timeless simplicity and creamy goodness of our Vanilla Shake.",
      imagePath: "assets/images/vanillashake.png",
      price: 2.99,
      category: FoodCategory.dessert,
      availableAddons: [
        Addon(name: "Extra Sccop", price: 0.99),
        Addon(name: "More Syrup", price: 1.99),
        Addon(name: "More Candies", price: 2.99),
      ],
    ),
    Food(
      name: "Hamilton Ice-Cream",
      description:
          "Experience royal indulgence with our Chicken Maharaja Burger.",
      imagePath: "assets/images/icecream.png",
      price: 3.99,
      category: FoodCategory.dessert,
      availableAddons: [
        Addon(name: "Extra Cheese Slice", price: 0.99),
        Addon(name: "Double Patty", price: 1.99),
        Addon(name: "Double Chicken", price: 2.99),
      ],
    ),
    Food(
      name: "Mojito",
      description: "Experience the ultimate refreshment with our Mojito.",
      imagePath: "assets/images/mojito.png",
      price: 2.90,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.99),
        Addon(name: "Extra lemon", price: 1.99),
        Addon(name: "Extra Straws", price: 0.99),
      ],
    ),
    Food(
      name: "Coca-Cola",
      description:
          "Quench your thirst with the classic, refreshing taste of Coca-Cola.",
      imagePath: "assets/images/cola.png",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.99),
        Addon(name: "More Litres", price: 1.99),
        Addon(name: "Fresh Lime", price: 2.99),
      ],
    ),
    Food(
      name: "Pepsi",
      description:
          "Enjoy the vibrant, fruity burst of Fanta, a beloved soft drink.",
      imagePath: "assets/images/pepsi.png",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.99),
        Addon(name: "Extra Lemon", price: 1.99),
        Addon(name: "Limited Edition", price: 2.99),
      ],
    ),
    Food(
      name: "Coffee",
      description: "Boost your energy with the iconic Red Bull.",
      imagePath: "assets/images/coffee.png",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.99),
        Addon(name: "Capacino", price: 1.99),
        Addon(name: "Barista", price: 2.99),
      ],
    ),
    Food(
      name: "Juices",
      description: "Boost your energy with the iconic Red Bull.",
      imagePath: "assets/images/juice.png",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Fresh Garden Salad",
      description:
          "Enjoy the vibrant and crisp flavors of our Fresh Garden Salad.",
      imagePath: "assets/images/salad.png",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Extra Spicy", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Russian Salad",
      description:
          "Delight in the creamy and savory flavors of our Russian Salad.",
      imagePath: "assets/images/rusalad.png",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "More Tomatoes", price: 1.99),
        Addon(name: "Extra Spicy", price: 2.99),
      ],
    ),
    Food(
      name: "Italian Salad",
      description: "Savor the vibrant and zesty flavors of our Italian Salad.",
      imagePath: "assets/images/salad.png",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "HOney Dressing", price: 1.99),
        Addon(name: "Avacado Dressing", price: 2.99),
      ],
    ),
    Food(
      name: "Indian Salad",
      description: "Savor the vibrant and zesty flavors of our Italian Salad.",
      imagePath: "assets/images/salad2.png",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Extra Honey Dressing", price: 1.99),
        Addon(name: "More Carrots", price: 2.99),
      ],
    ),
    Food(
      name: "Amercian Salad",
      description: "Savor the vibrant and zesty flavors of our Italian Salad.",
      imagePath: "assets/images/salad.png",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Extra Tomatoes", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Manchurian",
      description: "Experience the vibrant and savory flavors of Manchurian.",
      imagePath: "assets/images/manchurian.png",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Dip", price: 0.99),
        Addon(name: "Extra Spicy", price: 1.99),
        Addon(name: "Avacado Special", price: 2.99),
      ],
    ),
    Food(
      name: "Chowmien",
      description: "Dive into the deliciously savory world of Chowmein.",
      imagePath: "assets/images/chowmen.png",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Extra Spicy", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Honey Chilli Potato",
      description: "Dive into the deliciously savory world of Chowmein.",
      imagePath: "assets/images/chillipotato.png",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Extra Spicy", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "French Fries",
      description: "Dive into the deliciously savory world of Chowmein.",
      imagePath: "assets/images/frenchFries.png",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Extra Spicy", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Spring Rolls",
      description: "A juicy meaty patty with melted cheese cheddar.",
      imagePath: "assets/images/springrolls.png",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Extra Spicy", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
  ];

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  //user cart
  final List<CartItem> _cart = [];

  //operations
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons),
      );
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  //total no of items in cart

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's Your Receipt.");
    receipt.writeln();

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("=======================");

    for (final CartItem in _cart) {
      receipt.writeln(
          "${CartItem.quantity} x ${CartItem.food.name} - ${_formatPrice(CartItem.food.price)}");
      if (CartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("   Add-ons: ${_formatAddons(CartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("===================");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    return receipt.toString();
  }

  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
//35 mins