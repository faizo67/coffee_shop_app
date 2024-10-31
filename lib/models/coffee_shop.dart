// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  // list of coffee for sale's
  final List<Coffee> _coffeeList = [
    // Blacked Coffee
    Coffee(imagePath: "image", name: 'Blacked Coffee', price: "4"),
    // Expresso Coffee
    Coffee(imagePath: "image", name: "Expresso", price: "10"),
    // Iced Coffee
    Coffee(imagePath: "image", name: "Iced-Coffee", price: "40"),
    // latte Coffee
    Coffee(imagePath: "image", name: "Latte", price: "100"),
  ];

  // list of item's added into user
  final List<Coffee> _userItem = [];

  // get coffee list
  List<Coffee> get coffeeList => _coffeeList;
  // get user cart item's
  List<Coffee> get userItem => _userItem;

  // Added item's into cart
  void addItem(Coffee coffee) {
    _userItem.add(coffee);
    notifyListeners();
  }

  // Remove item's into cart
  void removeItem(Coffee coffee) {
    _userItem.remove(coffee);
    notifyListeners();
  }
}
