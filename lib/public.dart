import 'package:flutter/material.dart';
import 'constants.dart';

class PublicScreen extends StatefulWidget {
  PublicScreen({Key? key}) : super(key: key);

  @override
  State<PublicScreen> createState() => _PublicScreenState();
}

class _PublicScreenState extends State<PublicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.shopping_cart_outlined),
        backgroundColor: themeCol, // <-- Opens drawer
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Meilleurs articles",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Table(
                      children: [
                        TableRow(
                          children: [
                            article(nom: "Chaussure NIKE", prix: 190),
                            article(nom: "Verres GUCCI", prix: 990),
                          ],
                        ),
                        TableRow(
                          children: [
                            article(nom: "Chaussure NIKE", prix: 190),
                            article(nom: "Verres GUCCI", prix: 990),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget article({required String nom, required int prix}) {
  return Container(
    width: 170,
    height: 150,
    padding: EdgeInsets.all(4),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: .1),
        ],
        // color: themeCol,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                  image: DecorationImage(
                    image: AssetImage("img/1.jpeg"),
                  ),
                ),
              ),
              Positioned(
                top: 2,
                left: 10,
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(255, 222, 0, 1),
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(255, 222, 0, 1),
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(255, 222, 0, 1),
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(255, 222, 0, 1),
                      size: 20,
                    ),
                    Icon(
                      Icons.star_outline,
                      color: Color.fromRGBO(255, 222, 0, 1),
                      size: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: themeCol,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 2,
                ),
                Text(
                  "\$$prix",
                  style: TextStyle(
                    color: iconTopColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  nom,
                  style: TextStyle(
                    color: iconTopColor,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
