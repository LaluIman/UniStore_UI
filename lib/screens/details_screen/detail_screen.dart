import 'package:e_commerce/constant.dart';
import 'package:e_commerce/model/product_data.dart';
import 'package:e_commerce/screens/details_screen/components/body.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.product});
  static String routeName = "/detail";
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kforDetailBGColor,
      appBar: AppBar(
      backgroundColor: kforDetailBGColor,
        leading: Container(
          margin: EdgeInsets.only(left: getPropScreenWidth(10)),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle
          ),
          child: Center(
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded, size: 20,),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration:
                      BoxDecoration(color: kThirdColor, shape: BoxShape.circle),
                  child: Icon(
                    Icons.favorite,
                    size: 20,
                    color: product.isFavourite ? Colors.red : Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.share, color: kSecondaryColor),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.more_horiz, color: kSecondaryColor)
              ],
            ),
          )
        ],
      ),
      body: Body(
        product: product,
      ),
    );
  }
}
