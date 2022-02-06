import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class TopNavBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'E-market',
        style: TextStyle(
            color: iconTopColor, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      backgroundColor: themeCol,
      centerTitle: true,
      actions: [
        Stack(
          children: [
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: iconTopColor,
              ),
              onPressed: null,
              iconSize: 25,
            ),
            Positioned(
              child: Container(
                width: 15,
                height: 15,
                child: Center(
                  child: Text(
                    "23",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.red,
                ),
              ),
              top: 10,
              right: 10,
            )
          ],
        ),
        IconButton(
          icon: Icon(
            Icons.settings_outlined,
            color: iconTopColor,
          ),
          onPressed: null,
          iconSize: 25,
        ),
      ],
    );
  }
}

class BottomNavBar extends StatelessWidget {
  late final dynamic changeItem;
  int currIdx = 0;
  BottomNavBar(_changeItem, int curr) {
    changeItem = _changeItem;
    currIdx = curr;
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: themeCol,
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: themeCol,
      animationDuration: Duration(milliseconds: 400),
      index: currIdx,
      onTap: changeItem,
      height: 60,
      items: <Widget>[
        Icon(
          Icons.public,
          color: iconTopColor,
        ),
        Icon(
          Icons.star,
          color: iconTopColor,
        ),
        Icon(
          Icons.search,
          color: iconTopColor,
        ),
        Icon(
          Icons.person,
          color: iconTopColor,
        ),
      ],
    );
  }
}

/*BottomNavigationBar(
      onTap: changeItem,
      selectedItemColor: themeCol,
      currentIndex: currIdx,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: null,
            icon: Icon(
              Icons.public,
              color: iconBottomColor,
            ),
          ),
          activeIcon: Icon(
            Icons.public,
            color: themeCol,
          ),
          label: "Découvrir",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: null,
            icon: Icon(
              Icons.star,
              color: iconBottomColor,
            ),
          ),
          activeIcon: Icon(
            Icons.star,
            color: themeCol,
          ),
          label: "Favoris",
        ),
        /*  BottomNavigationBarItem(
          icon: IconButton(
            onPressed: null,
            icon: Icon(
              Icons.notifications,
              color: iconBottomColor,
            ),
          ),
          activeIcon: Icon(
            Icons.notifications,
            color: themeCol,
          ),
          label: "Notifications",
        ),*/
      ],
    );
    */