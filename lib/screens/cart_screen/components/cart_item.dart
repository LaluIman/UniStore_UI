import 'package:e_commerce/components/rounded_icon_button.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/model/cart_data.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key, required this.cart});

  final Cart cart;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
  int totalSelected = 1;
    return  SizedBox(
      height: 88,
      width: double.infinity,
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(10)),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: getPropScreenWidth(88),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      padding: EdgeInsets.all(getPropScreenWidth(10)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: kSecondaryColor.withOpacity(0.2)),
                      child: Image.asset(
                        listCart[0].product.images[0],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: getPropScreenWidth(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      listCart[0].product.title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getPropScreenWidth(16),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: getPropScreenHeight(10),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$${listCart[0].product.price}",
                          style: TextStyle(
                              fontSize: getPropScreenWidth(16),
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColor),
                        ),
                        SizedBox(width: getPropScreenWidth(70),),
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
                      ],
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}