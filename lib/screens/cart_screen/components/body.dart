import 'package:e_commerce/model/cart_data.dart';
import 'package:e_commerce/screens/cart_screen/components/cart_item.dart';
import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/state_managements/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, cartData, child) =>
       ListView.builder(
        itemCount: cartData.cartItems.length,
        itemBuilder: (context, index){
          final Cart cart = cartData.cartItems[index];
          return Padding(
            padding: EdgeInsets.symmetric(vertical: getPropScreenHeight(10)),
            child: Dismissible(
              key: Key(cart.product.id.toString()),
              direction: DismissDirection.endToStart,
              child: CartItem(cart: cart),
              onDismissed: (direction) {
                  cartData.removeCartItem(cart);
              },
              background: Container(
                margin: EdgeInsets.only(right: getPropScreenWidth(10)),
                padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                   Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       SvgPicture.asset("assets/icons/Trash.svg"),
                       Text("Delete", style: TextStyle(
                        fontSize: getPropScreenHeight(15),
                        color: Colors.red,
                        fontWeight: FontWeight.w500
                       ),)
                     ],
                   ),
                  ],
                ),
              )
            ),
          );
        }
      ),
    ) ;
  }
}
