import 'package:e_commerce_2/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  //products for sale
  final List<Product> _shop = [
    // product 1
    Product(
        name: 'Eye Glasses',
        price: 5,
        description: 'product 1 description',
        imagePath: 'asset/pngwing.com.png'
    ),
    // product 2
    Product(
        name: 'Hoodie',
        price: 132,
        description: 'product 2 description',
        imagePath: 'asset/pngwing.com (1).png'
    ),
    // product 3
    Product(
        name: 'Sneaker',
        price: 212,
        description: 'product 3 description',
        imagePath: 'asset/pngwing.com (2).png'
    ),
    // product 4
    Product(
        name: 'Men Wrist Watch',
        price: 320,
        description: 'product 4 description',
        imagePath: 'asset/pngwing.com (3).png'
    ),
    
  ];
  // user cart
  final List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }

  // checkout
  void checkout() {
    _cart.clear();
    notifyListeners();
}
}