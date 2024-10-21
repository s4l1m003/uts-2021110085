import 'package:flutter/material.dart';
import 'cart_model.dart';

class CartProvider with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => _items;

  void addItem(String title, String price) {
    if (_items.containsKey(title)) {
      _items[title]!.quantity += 1;
    } else {
      _items[title] = CartItem(title: title, price: price);
    }
    notifyListeners();
  }

  void updateQuantity(String title, int quantity) {
    if (_items.containsKey(title)) {
      _items[title]!.quantity = quantity;
      if (quantity == 0) {
        _items.remove(title); // Remove item if quantity is 0
      }
      notifyListeners();
    }
  }

  double get totalAmount {
    double total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.totalPrice;
    });
    return total;
  }

  void clearCart() {
    _items = {};
    notifyListeners();
  }
}
