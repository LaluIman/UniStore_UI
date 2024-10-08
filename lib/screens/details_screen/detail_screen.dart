import 'package:e_commerce/model/product_data.dart';
import 'package:e_commerce/screens/details_screen/components/body.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.product});
  static String routeName = "/detail";
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text("${product.rating}", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.star, color: Colors.yellow,)
              ],
            ),
          )
        ],
      ),
      body: Body(product: product,),
    );
  }
}
