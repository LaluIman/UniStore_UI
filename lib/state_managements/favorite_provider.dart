import 'package:e_commerce/model/product_data.dart';
import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier{
  final List<Product> _listProducts = demoProducts;
  List<Product> get getFavoriteProducts{
    return _listProducts.where((product) => product.isFavourite).toList();
  }

  void toggleFavouriteStatus(int id){
    final productIndex = _listProducts.indexWhere((product) => product.id == id);
    _listProducts[productIndex].isFavourite =
    !_listProducts[productIndex].isFavourite;
    notifyListeners();  
  }

  List<Product> get listProducts => _listProducts;


}