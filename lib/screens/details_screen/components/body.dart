import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/rounded_icon_button.dart';
import 'package:e_commerce/model/cart_data.dart';
import 'package:e_commerce/model/product_data.dart';
import 'package:e_commerce/screens/details_screen/components/color_picker.dart';
import 'package:e_commerce/screens/details_screen/components/detail_description.dart';
import 'package:e_commerce/screens/details_screen/components/image_detail.dart';
import 'package:e_commerce/screens/details_screen/components/rounded_container.dart';
import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/state_managements/cart_provider.dart';
import 'package:e_commerce/state_managements/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentSelectedColor = 3;
  int totalSelected = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageDetail(product: widget.product),
            roundedContainer(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                detailDescription(product: widget.product),
                SizedBox(
                  height: getPropScreenWidth(20),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
                  child: Row(children: [
                    ...List.generate(widget.product.colors.length, (index) {
                      final Color color = widget.product.colors[index];
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              currentSelectedColor = index;
                            });
                          },
                          child: ColorSelection(
                            color: color,
                            isSelected: index == currentSelectedColor,
                          ));
                    }),
                    Spacer(),
                    Row(
                      children: [
                        RoundedIconBtn(
                            icon: Icons.remove,
                            press: totalSelected > 1
                                ? () {
                                    setState(() {
                                      totalSelected--;
                                    });
                                  }
                                : null),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${totalSelected}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RoundedIconBtn(
                          icon: Icons.add,
                          press: () {
                            setState(() {
                              totalSelected++;
                            });
                          },
                        ),
                      ],
                    )
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getPropScreenWidth(20),
                      vertical: getPropScreenHeight(20)),
                  child: DefaultButton(
                      text: "Add to cart",
                      press: () {
                        Provider.of<CartProvider>(context, listen: false)
                            .addCartItem(Cart(
                                product: widget.product,
                                numOfItem: totalSelected));
                        if(widget.product.isFavourite){
                          Provider.of<FavoriteProvider>(context, listen: false).toggleFavouriteStatus(widget.product.id);
                        }
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Success add to cart!", style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),),
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsets.all(20),
                          duration: Duration(milliseconds: 2000),
                          elevation: 30,
                          )
                        );
                      }),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
