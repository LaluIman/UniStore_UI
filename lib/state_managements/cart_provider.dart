import 'package:e_commerce/model/cart_data.dart';
import 'package:e_commerce/model/product_data.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final List<Cart> _listCart = [
    Cart(product: demoProducts[1], numOfItem: 1),
    Cart(product: demoProducts[4], numOfItem: 2),
    Cart(product: demoProducts[3], numOfItem: 1),
  ];

  List<Cart> get cartItems => _listCart;

  void removeCartItem(Cart cartItem) {
    _listCart.removeWhere((item) => item.product.id == cartItem.product.id);
    notifyListeners();
  }

  void addCartItem(Cart cartItem) {
    final index =
        _listCart.indexWhere((item) => item.product.id == cartItem.product.id);
    if (index != -1) {
      _listCart[index].numOfItem += cartItem.numOfItem;
    } else {
      _listCart.add(cartItem);
    }
    notifyListeners();
  }

  //total counting boy
  double get totalPrice => double.parse(
    _listCart.fold(0.0,
      (total, current) => total + current.product.price * current.numOfItem
    ).toStringAsFixed(2)
  );

  void clearCart(){
    _listCart.clear();
    notifyListeners();
  }
}
