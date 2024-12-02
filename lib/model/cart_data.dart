import 'package:e_commerce/model/product_data.dart';

class Cart{
  final Product product;
   int numOfItem;

  Cart({required this.product, required this.numOfItem});

}

// final List<Cart> listCart = [
//     Cart(product: demoProducts[1], numOfItem: 1),
//     Cart(product: demoProducts[4], numOfItem: 2),
//     Cart(product: demoProducts[3], numOfItem: 1),
//   ];