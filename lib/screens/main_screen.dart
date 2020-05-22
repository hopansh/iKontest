import 'package:flutter/material.dart';
import 'package:ikontest/screens/homeBody_screen.dart';
import 'package:ikontest/screens/home_screen.dart';
import 'package:ikontest/screens/notificationPanel_screen.dart';
import 'package:ikontest/screens/search_screen.dart';
import 'package:ikontest/screens/upload_screen.dart';
import 'package:ikontest/screens/userProfile_screen.dart';
class MainScr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar : Container(
      height: 50.0,
      child: BottomAppBar(
        color: Color(0xff4d8080),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {builder: (context) => Home();
              print("home");
                },
            ),
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );},
            ),
            IconButton(
              icon: Icon(Icons.add_circle, color: Colors.white),
              onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UploadScr()),
                );},
            ),
            IconButton(
              icon: Icon(Icons.notifications_active, color: Colors.white),
              onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationPanel()),
                );},
            ),
            IconButton(
              icon: Icon(Icons.account_circle, color: Colors.white),
              onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserProfile()),
                );},
            )
          ],
        ),
      ),
      ),
    );
  }
}