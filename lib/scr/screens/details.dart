import 'package:app_foodordering/scr/models/product.dart';
import 'package:app_foodordering/scr/helpers/style.dart';
import 'package:app_foodordering/scr/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:intl/intl.dart';

class Details extends StatefulWidget {
  final Product product;

  Details({@required this.product});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 300,
              child: Stack(
                children: [
                  Carousel(
                    images: [
                      Image.asset(
                        "images/${widget.product.image}",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "images/${widget.product.image}",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "images/${widget.product.image}",
                        fit: BoxFit.cover,
                      ),
                    ],
                    dotBgColor: white,
                    dotColor: grey,
                    dotIncreasedColor: red,
                    dotIncreaseSize: 1.2,
                    autoplay: false,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(Icons.arrow_back, color: white),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: Stack(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                        Icons.shopping_bag_outlined,
                                        color: white,
                                        size: 28,
                                      ),
                                      onPressed: () {}),
                                ],
                              ),
                            ),
                            Positioned(
                              right: 10,
                              bottom: 6,
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
                                  padding:
                                      const EdgeInsets.only(left: 4, right: 4),
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
                      )
                    ],
                  ),
                  Positioned(
                    right: 20,
                    bottom: 60,
                    child: Container(
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[400],
                                offset: Offset(2, 1),
                                blurRadius: 3)
                          ]),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.favorite,
                          size: 16,
                          color: red,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            CustomText(
              text: widget.product.name,
              size: 26,
              weight: FontWeight.bold,
            ),
            Text(
              NumberFormat.currency(
                      locale: "id", symbol: "Rp ", decimalDigits: 0)
                  .format(widget.product.price),
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w600, color: red),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      icon: Icon(Icons.remove, size: 28, color: red),
                      onPressed: () {}),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: red, borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(28.0, 12.0, 28.0, 12.0),
                      child: CustomText(
                        text: "Add to Bag",
                        size: 20,
                        color: white,
                        weight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      icon: Icon(Icons.add, size: 28, color: red),
                      onPressed: () {}),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
