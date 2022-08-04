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
      body: Container(
        // color: Color.fromRGBO(30, 30, 30, 1),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 5, top: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.1),
                              blurRadius: 10,
                              spreadRadius: .1),
                        ],
                      ),
                      height: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: themeCol, width: 2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey.shade300,
                            fontSize: 20,
                          ),
                          hintText: "Rechercher",
                          hintTextDirection: TextDirection.ltr,
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: themeCol2,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Meilleurs articles",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      TextButton(
                        onPressed: () => {},
                        child: Text(
                          "Voir tout",
                          style: TextStyle(
                            fontSize: 20,
                            color: themeCol,
                            fontWeight: FontWeight.w500,
                            //decoration: TextDecoration.underline,
                            // decorationStyle: TextDecorationStyle.wavy
                            //  fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      child: Wrap(
                    children: [
                      article(
                          nom: "Chaussure NIKE",
                          prix: 190,
                          url: "img/1.jpeg",
                          context: context),
                      article(
                          nom: "Verres GUCCI",
                          prix: 990,
                          url: "img/3.jpg",
                          context: context),
                      article(
                          nom: "Chaussure NIKE",
                          prix: 190,
                          url: "img/2.jpg",
                          context: context),
                      article(
                          nom: "Verres GUCCI",
                          prix: 990,
                          url: "img/1.jpeg",
                          context: context),
                    ],
                  )),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Meilleurs vendeurs",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      TextButton(
                        onPressed: () => {},
                        child: Text(
                          "Voir tout",
                          style: TextStyle(
                            fontSize: 20,
                            color: themeCol,
                            fontWeight: FontWeight.w500,
                            //decoration: TextDecoration.underline,
                            // decorationStyle: TextDecorationStyle.wavy
                            //  fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      child: Wrap(
                    children: [
                      vendeur(
                          nom: "Chaussure NIKE",
                          url: "img/1.jpeg",
                          context: context),
                      vendeur(
                          nom: "Verres GUCCI",
                          url: "img/3.jpg",
                          context: context),
                      vendeur(
                          nom: "Chaussure NIKE",
                          url: "img/2.jpg",
                          context: context),
                      vendeur(
                          nom: "Verres GUCCI",
                          url: "img/1.jpeg",
                          context: context),
                    ],
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget article(
    {required String nom, required int prix, required String url, context}) {
  return Container(
    margin: EdgeInsets.all(7),
    width: MediaQuery.of(context).size.width / 2.3,
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
                    image: AssetImage(url),
                    fit: BoxFit.cover,
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
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              color: themeCol2,
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

Widget vendeur({required String nom, required String url, context}) {
  return Container(
    margin: EdgeInsets.all(7),
    height: MediaQuery.of(context).size.width / 2.3,
    width: MediaQuery.of(context).size.width / 2.3,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: .1),
        ],
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  backgroundBlendMode: BlendMode.multiply,
                  image: DecorationImage(
                      image: AssetImage(url), fit: BoxFit.cover),
                  color: Color.fromRGBO(21, 21, 32, 1),
                ),
                width: MediaQuery.of(context).size.width / 2.3,
                child: Stack(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      child: Container(
                        margin: EdgeInsets.all(7),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(url),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: themeCol,
                            width: 2,
                          ),
                        ),
                        width: 80,
                        height: 80,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Row(
                        children: [
                          Text(
                            "3",
                            style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            color: Color.fromRGBO(255, 222, 0, 1),
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  nom,
                  style: TextStyle(
                    color: themeCol,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
