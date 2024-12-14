import 'package:e_commerce/constant.dart';
import 'package:e_commerce/model/product_data.dart';
import 'package:e_commerce/components/product_card.dart';
import 'package:e_commerce/screens/details_screen/detail_screen.dart';
import 'package:e_commerce/screens/home_screen/components/header_component.dart';
import 'package:e_commerce/screens/home_screen/components/cashback_banner.dart';
import 'package:e_commerce/screens/home_screen/components/categories.dart';
import 'package:e_commerce/screens/home_screen/components/section_title.dart';
import 'package:e_commerce/screens/home_screen/components/special_offer_card.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Product> _filteredProducts = demoProducts;
  bool _isSearching = false; 

  void _filterProducts(String search) {
    setState(() {
      _isSearching = search.isNotEmpty;
      if (_isSearching) {
        _filteredProducts = demoProducts
            .where((product) =>
                product.title.toLowerCase().contains(search.toLowerCase()))
            .toList();
      } else {
        _filteredProducts =
            demoProducts; 
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        SizedBox(height: getPropScreenHeight(30)),
            HeaderComponent(onSearchChanged: _filterProducts),
            _isSearching ? _buildGridProducts() : _buildDefaultHome(),
          ],
        ),
      ),
    );
  }

  Widget _buildGridProducts() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: _filteredProducts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: getPropScreenWidth(10),
          mainAxisSpacing: getPropScreenHeight(20),
        ),
        itemBuilder: (context, index) {
          final product = _filteredProducts[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, DetailScreen.routeName,
                  arguments: product);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: getPropScreenWidth(140),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AspectRatio(
                      aspectRatio: 1.09,
                      child: Container(
                        padding: EdgeInsets.all(getPropScreenWidth(15)),
                        decoration: BoxDecoration(
                          color: kSecondaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          product.images[0],
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Flexible(
                      child: SizedBox(
                        height: 50,
                        child: Text(
                          product.title,
                          style: TextStyle(fontSize: 15),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${product.price}",
                          style: TextStyle(
                            fontSize: getPropScreenWidth(18),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildDefaultHome() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: getPropScreenHeight(20)),
        cashbackBanner(),
        SizedBox(height: getPropScreenHeight(10)),
        Categories(),
        SizedBox(height: getPropScreenHeight(10)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          child: Sectiontitle(title: "Special for you"),
        ),
        SizedBox(height: getPropScreenHeight(10)),
        SpecialOffer(),
        SizedBox(height: getPropScreenHeight(10)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          child: Sectiontitle(title: "Popular product"),
        ),

        SizedBox(height: getPropScreenHeight(10)),

        
        _buildHorizontalProducts(),
      ],
    );
  }

  
  Widget _buildHorizontalProducts() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(right: getPropScreenWidth(20)),
        child: Row(
          children: List.generate(
            _filteredProducts.length,
            (index) {
              final product = _filteredProducts[index];
              return ProductCard(
                product: product,
                press: () {
                  Navigator.pushNamed(context, DetailScreen.routeName,
                      arguments: product);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
