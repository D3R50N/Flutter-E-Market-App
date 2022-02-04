import 'package:flutter/material.dart';
import 'constants.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        centerTitle: false,
        backgroundColor: themeCol,
      ),
      body: Center(
        child: Text("Ma page des profil"),
      ),
    );
  }
}
