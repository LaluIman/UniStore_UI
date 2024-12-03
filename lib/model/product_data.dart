import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wireless Controller for PS4™",
    price: 64.99,
    description: "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing and streaming your epic gaming moments with friends and family. It's a great way to experience the thrill of gaming with precision and accuracy. The controller is designed to provide a comfortable grip and intuitive controls, making it easy to navigate through your games. With its advanced technology, you can enjoy a seamless gaming experience that's both fun and engaging. Whether you're a casual gamer or a serious enthusiast, this controller is sure to provide you with hours of entertainment and excitement.",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),

  Product(
    id: 2,
    images: [
      "assets/images/Iphone14.png",
      "assets/images/Iphone14(2).png",
      "assets/images/Iphone14(3).png",
      "assets/images/Iphone14(4).png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Iphone 14 pro max",
    price: 1590.00,
    description: "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing and streaming your epic gaming moments with friends and family. It's a great way to experience the thrill of gaming with precision and accuracy. The controller is designed to provide a comfortable grip and intuitive controls, making it easy to navigate through your games. With its advanced technology, you can enjoy a seamless gaming experience that's both fun and engaging. Whether you're a casual gamer or a serious enthusiast, this controller is sure to provide you with hours of entertainment and excitement.",
    rating: 4.3,
    isFavourite: true,
  ),
  
  Product(
    id: 3,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    description: "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing and streaming your epic gaming moments with friends and family. It's a great way to experience the thrill of gaming with precision and accuracy. The controller is designed to provide a comfortable grip and intuitive controls, making it easy to navigate through your games. With its advanced technology, you can enjoy a seamless gaming experience that's both fun and engaging. Whether you're a casual gamer or a serious enthusiast, this controller is sure to provide you with hours of entertainment and excitement.",
    rating: 4.1,
    isPopular: true,
  ),

  Product(
    id: 4,
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.black,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing and streaming your epic gaming moments with friends and family. It's a great way to experience the thrill of gaming with precision and accuracy. The controller is designed to provide a comfortable grip and intuitive controls, making it easy to navigate through your games. With its advanced technology, you can enjoy a seamless gaming experience that's both fun and engaging. Whether you're a casual gamer or a serious enthusiast, this controller is sure to provide you with hours of entertainment and excitement.",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),

  Product(
    id: 5,
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.black,
    ],
    title: "Logitech Headset",
    price: 20.20,
    description: "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing and streaming your epic gaming moments with friends and family. It's a great way to experience the thrill of gaming with precision and accuracy. The controller is designed to provide a comfortable grip and intuitive controls, making it easy to navigate through your games. With its advanced technology, you can enjoy a seamless gaming experience that's both fun and engaging. Whether you're a casual gamer or a serious enthusiast, this controller is sure to provide you with hours of entertainment and excitement.",
    rating: 4.1,
    isFavourite: true,
  ),

  Product(
    id: 6,
    images: [
      "assets/images/Image Popular Product 3.png",
    ],
    colors: [
      Colors.white,
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      const Color(0xFFF6625E),
    ],
    title: "Bike helmet for Adult",
    price: 17.20,
    description: "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing and streaming your epic gaming moments with friends and family. It's a great way to experience the thrill of gaming with precision and accuracy. The controller is designed to provide a comfortable grip and intuitive controls, making it easy to navigate through your games. With its advanced technology, you can enjoy a seamless gaming experience that's both fun and engaging. Whether you're a casual gamer or a serious enthusiast, this controller is sure to provide you with hours of entertainment and excitement.",
    rating: 3.5,
    isFavourite: false,
  ),

  Product(
    id: 7,
    images: [
      "assets/images/denim_jacket.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      const Color(0xFF4A6172),
    ],
    title: "Dark blue denim jacket",
    price: 32.10,
    description: "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing and streaming your epic gaming moments with friends and family. It's a great way to experience the thrill of gaming with precision and accuracy. The controller is designed to provide a comfortable grip and intuitive controls, making it easy to navigate through your games. With its advanced technology, you can enjoy a seamless gaming experience that's both fun and engaging. Whether you're a casual gamer or a serious enthusiast, this controller is sure to provide you with hours of entertainment and excitement.",
    rating: 4.3,
    isFavourite: false,
  ),

];
    