import 'package:flutter/cupertino.dart';

class Product {
  final String name;
  final String image;
  final double rating;
  final int price;
  final String vendor;
  final bool wishList;

  Product(
      {@required this.name,
      this.image,
      this.rating,
      this.vendor,
      this.wishList,
      this.price});
}
