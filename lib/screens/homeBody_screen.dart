import 'package:flutter/material.dart';
import 'package:ikontest/screens/home_screen.dart';
import 'package:ikontest/screens/notificationPanel_screen.dart';
import 'package:ikontest/screens/search_screen.dart';
import 'package:ikontest/screens/subScreens/feed.dart';
import 'package:ikontest/screens/upload_screen.dart';
import 'package:ikontest/screens/userProfile_screen.dart';
import '../screens/subScreens/wallpapers.dart';
import '../screens/subScreens/contest.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
int _bodyIndex=0;
  final List<String> category = [
    "Feed", "Contests", "Wallpapers"
  ];
   final List<StatefulWidget> funcategory = [
    Feed(), Contest(), Wall()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar : Container(
      height: 50.0,
      child: BottomAppBar(
        color: Color(0xff4d8080),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );},
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
        body: ListView( 
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 5),
          children: <Widget>[
            Container(
            height:45.0,
            color: Colors.white,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal:15),
              physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: category.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _bodyIndex = index;
                      });
                    },
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(25, 5, 20, 0),
                        child: Text(
                          category[index],
                          style: TextStyle(
                              color: index == _bodyIndex
                                  ? Color(0xff305050)
                                  : Color(0xffafcfcf),
                              fontSize: index == _bodyIndex ? 25.0 : 20),
                        )),
                  );
                })),
            Container(
              height: 650,
              decoration: BoxDecoration(
                color: Color(0xffe0ebeb),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
                   child: funcategory[_bodyIndex],
            ),
          ],
        ));
  }
}
