import 'package:app_foodordering/scr/widgets/bottom_navigation.dart';
import 'package:app_foodordering/scr/widgets/categories.dart';
import 'package:app_foodordering/scr/helpers/style.dart';
import 'package:app_foodordering/scr/widgets/featured_product.dart';
import 'package:app_foodordering/scr/widgets/small_button.dart';
import 'package:app_foodordering/scr/widgets/title.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: "What are you looking for?",
                    size: 18,
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                        icon: Icon(Icons.notifications_none), onPressed: () {}),
                    Positioned(
                      top: 10,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(1, 1),
                      blurRadius: 4)
                ]),
                child: ListTile(
                  leading: Icon(Icons.search, color: red),
                  title: TextField(
                      decoration: InputDecoration(
                          hintText: "Find food and restaurants",
                          border: InputBorder.none)),
                  trailing: Icon(Icons.filter_list, color: red),
                ),
              ),
            ),
            SizedBox(height: 5),
            Categories(),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text: "Featured", size: 20, color: grey),
            ),
            Featured(),

            //AWAL FITUR POPULAR
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text: "Popular Food", size: 20, color: grey),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Stack(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/bakso.jpg")),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallButton(Icons.favorite),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.yellow[900],
                                    size: 20,
                                  ),
                                ),
                                Text("4.5")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.7),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.1),
                                Colors.black.withOpacity(0.05),
                                Colors.black.withOpacity(0.025),
                              ])),
                    ),
                  )),
                  Positioned.fill(
                      child: Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "Bakso \n",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: white)),
                            TextSpan(
                                text: "by: ",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: white)),
                            TextSpan(
                                text: "Bakso Solo",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: white)),
                          ], style: TextStyle(color: black))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "Rp 12.000",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                    color: white))
                          ], style: TextStyle(color: black))),
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
            //AKHIR FITUR POPULAR
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: white,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BottomNavIcon(
                image: "home.png",
                name: "Home",
              ),
              BottomNavIcon(
                image: "nearby.png",
                name: "Nearby",
              ),
              BottomNavIcon(
                image: "shopping-bag.png",
                name: "Cart",
              ),
              BottomNavIcon(
                image: "user.png",
                name: "Account",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
