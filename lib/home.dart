import 'package:flutter/material.dart';
import 'constants.dart';
import 'navBar.dart';
import 'profile.dart';
import 'public.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  int _currentIdx = 0;

  void _onItemTapped(index) {
    setState(() {
      _pageController.jumpToPage(index);
    });
  }

  void selectItem(int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Profile()));
        break;
      default:
    }
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  static const double menuItemSpacing = 10;

  PageController _pageController = PageController(initialPage: 0);
  List<Widget> malist = [
    PublicScreen(),
    Center(
      child: Text('Stars'),
    ),
    Center(
      child: Text('Search'),
    ),
    Center(
      child: Text('Profile'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNavBar(),
      body: PageView(
        controller: _pageController,
        children: malist,
        // scrollDirection: Axis.vertical,
        onPageChanged: (i) => {
          setState(() => {_currentIdx = i})
        },
      ),
      bottomNavigationBar: BottomNavBar(_onItemTapped, _currentIdx),
      key: _key,
      drawer: Container(
        width: 240,
        color: themeCol,
        child: Drawer(
          child: Material(
            color: themeCol,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              children: [
                const SizedBox(
                  height: menuItemSpacing + 60,
                ),
                TextField(
                  style: TextStyle(color: iconTopColor),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    hintText: 'Rechercher',
                    hintStyle: TextStyle(color: Colors.white54),
                    prefixIcon: Icon(
                      Icons.search,
                      color: iconTopColor,
                    ),
                    filled: true,
                    fillColor: Colors.white12,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.white.withOpacity(.7),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.white.withOpacity(.7),
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: menuItemSpacing,
                ),
                menuItem(
                  text: "Mon profil",
                  icon: Icons.person_outline,
                  ontap: () {
                    selectItem(0);
                  },
                ),
                const SizedBox(
                  height: menuItemSpacing,
                ),
                menuItem(
                  text: "Mon panier",
                  icon: Icons.shopping_cart_outlined,
                  ontap: () {},
                ),
                const SizedBox(
                  height: menuItemSpacing,
                ),
                menuItem(
                  text: "Mes favoris",
                  icon: Icons.star_border,
                ),
                const SizedBox(
                  height: menuItemSpacing,
                ),
                menuItem(
                  text: "Mon porte-feuille",
                  icon: Icons.monetization_on_outlined,
                ),
                const SizedBox(
                  height: menuItemSpacing,
                ),
                Divider(
                  color: Colors.white70,
                ),
                menuItem(
                  text: "Notifications",
                  icon: Icons.notifications_outlined,
                ),
                const SizedBox(
                  height: menuItemSpacing,
                ),
                menuItem(
                  text: "Mises à jour",
                  icon: Icons.update_outlined,
                ),
                const SizedBox(
                  height: menuItemSpacing,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget menuItem(
    {required String text, required IconData icon, VoidCallback? ontap}) {
  final color = Colors.white;
  return ListTile(
    title: Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 15,
            color: color,
          ),
        )
      ],
    ),
    onTap: ontap,
  );
}
