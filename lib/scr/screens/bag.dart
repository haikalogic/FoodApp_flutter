import 'package:app_foodordering/scr/helpers/style.dart';
import 'package:app_foodordering/scr/models/product.dart';
import 'package:app_foodordering/scr/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ShoppingBag extends StatefulWidget {
  @override
  _ShoppingBagState createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  Product product = Product(
      name: "Burger",
      price: 18000,
      rating: 4.2,
      vendor: "Burger Blenger",
      wishList: true,
      image: "burger.jpg");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: white,
        elevation: 0,
        centerTitle: true,
        title: CustomText(
          text: "Shopping Bag",
          size: 20,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Stack(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                      color: black,
                      size: 28,
                    ),
                    onPressed: () {}),
                Positioned(
                  right: 10,
                  bottom: 14,
                  child: Container(
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[400],
                              offset: Offset(2, 1),
                              blurRadius: 3)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      child: CustomText(
                        text: "2",
                        color: red,
                        size: 14,
                        weight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 120,
              width: MediaQuery.of(context).size.width - 10,
              decoration: BoxDecoration(color: white, boxShadow: [
                BoxShadow(
                  color: Colors.red[50],
                  offset: Offset(3, 5),
                  blurRadius: 30,
                )
              ]),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "images/${product.image}",
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: product.name + "\n",
                            style: TextStyle(fontSize: 20)),
                        TextSpan(
                            text: NumberFormat.currency(
                              locale: "id",
                              symbol: "Rp ",
                              decimalDigits: 0,
                            ).format(product.price),
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      ], style: TextStyle(fontFamily: "Varela", color: black))),
                      SizedBox(width: 100),
                      IconButton(icon: Icon(Icons.delete), onPressed: null)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
