import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/model/product_data.dart';
import 'package:e_commerce/screens/details_screen/components/color_picker.dart';
import 'package:e_commerce/screens/details_screen/components/detail_description.dart';
import 'package:e_commerce/screens/details_screen/components/image_detail.dart';
import 'package:e_commerce/screens/details_screen/components/rounded_container.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageDetail(product: product),
            roundedContainer(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                detailDescription(product: product),
                SizedBox(
                  height: getPropScreenWidth(20),
                ),
                ColorPickerContainer(product: product),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getPropScreenWidth(20),
                      vertical: getPropScreenHeight(20)),
                  child: DefaultButton(text: "Add to cart", press: () {}),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
