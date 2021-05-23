import 'package:app_foodordering/scr/models/product.dart';
import 'package:app_foodordering/scr/helpers/style.dart';
import 'package:flutter/material.dart';

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
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
            Text(
              widget.product.name,
              style: TextStyle(color: black),
            )
          ],
        ),
      ),
    );
  }
}
