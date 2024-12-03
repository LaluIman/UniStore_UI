import 'package:e_commerce/constant.dart';
import 'package:e_commerce/model/cart_data.dart';
import 'package:e_commerce/model/product_data.dart';
import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/state_managements/cart_provider.dart';
import 'package:e_commerce/state_managements/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(
      builder: (context, favorites, child) => ListView.builder(
          itemCount: favorites.getFavoriteProducts.length,
          itemBuilder: (context, index) {
            final Product product = favorites.getFavoriteProducts[index];
            return Padding(
              padding: EdgeInsets.symmetric(vertical: getPropScreenHeight(10)),
              child: Slidable(
                key: Key(product.id.toString()),
                endActionPane: ActionPane(
                    motion: ScrollMotion(), children: [
                      SlidableAction(
                        onPressed: (context){
                          Provider.of<CartProvider>(context, listen: false).addCartItem(Cart(product: product, numOfItem: 1));
                          favorites.toggleFavouriteStatus(product.id);
                           ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Added to cart!", style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),),
                          backgroundColor: Color(0xFF4093FF),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsets.all(20),
                          duration: Duration(milliseconds: 2000),
                          elevation: 30,
                          ),
                        );
                        },
                        icon: Icons.shopping_cart,
                        label: "Add to cart",
                        backgroundColor: Color(0xFF4093FF),
                        padding: EdgeInsets.all(10),
                      ),
                      SlidableAction(
                        onPressed: (context){
                          favorites.toggleFavouriteStatus(product.id);
                           ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Removed!", style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),),
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsets.all(20),
                          duration: Duration(milliseconds: 2000),
                          elevation: 30,
                          ),
                        );
                        },
                        icon: Icons.delete,
                        label: "Delete",
                        backgroundColor: Colors.red.withOpacity(0.5),
                        foregroundColor: Color(0xffFF3B30),
                        padding: EdgeInsets.all(10),
                        // borderRadius: BorderRadius.only(
                        //   topRight: Radius.circular(15),
                        //   bottomRight: Radius.circular(15)
                        // ),
                      ),
                    ]
                ),
                child: SizedBox(
                  height: 88,
                  width: double.infinity,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getPropScreenWidth(10)),
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
                                  padding:
                                      EdgeInsets.all(getPropScreenWidth(10)),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: kSecondaryColor.withOpacity(0.2)),
                                  child: Image.asset(
                                    product.images[0],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: getPropScreenWidth(10),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.title,
                                  style: TextStyle(
                                      fontSize: getPropScreenWidth(16),
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: getPropScreenHeight(10),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$${product.price}",
                                      style: TextStyle(
                                        fontSize: getPropScreenWidth(16),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                ),
              ),
            );
          }),
    );
  }
}
