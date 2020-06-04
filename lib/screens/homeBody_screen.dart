import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ikontest/screens/about_screen.dart';
import 'package:ikontest/screens/contest.dart';
import 'package:ikontest/screens/contests_screen.dart';
import 'package:ikontest/screens/faq_screen.dart';
import 'package:ikontest/screens/feed.dart';
import 'package:ikontest/screens/invite_screen.dart';
import 'package:ikontest/screens/mediaRequest_screen.dart';
import 'package:ikontest/screens/notificationPanel_screen.dart';
import 'package:ikontest/screens/personProfile_screen.dart';
import 'package:ikontest/screens/saved_screen.dart';
import 'package:ikontest/screens/search_screen.dart';
import 'package:ikontest/screens/settings_screen.dart';
import 'package:ikontest/screens/upload_screen.dart';
import 'package:ikontest/screens/wallpaper_screen.dart';

class Home extends StatefulWidget {
  GoogleSignIn _googleSignIn = GoogleSignIn();
  Home(this._googleSignIn);
  @override
  _HomeState createState() => _HomeState();
  void setState(fn) {}
}

class _HomeState extends State<Home> {
  static StatefulWidget _boxCall = Feed();
  static String _icoColor = "iKontest";
  static String _index = "iKontestPage";
  static bool lTheme = false;
  final List<int> mycolor2 = [0xffffffff, 0xff3a4256, 0xff7683a2, 0xff80ccff];
  final List<int> mycolor = [0xff15171e, 0xffff471a];
  @override
  Widget build(BuildContext context) {
    final appBar=AppBar(
        backgroundColor:
            lTheme == true ? Color(mycolor2[1]) : Color(mycolor[0]),
        elevation: 0,
        centerTitle: true,
        title: Text(_index == "iKontestPage" ? _icoColor : _index,
            style: TextStyle(
              fontSize: 27,
              fontFamily: "Bauhaus-93",
              color: Color(mycolor2[0]),
            )),
        actions: <Widget>[
          IconButton(
            color: Color(mycolor2[0]),
            icon: Icon(Icons.search),
            iconSize: 35,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchScreen()),
              );
            },
          )
        ],
      );
     final screenSize =
        MediaQuery.of(context).size.height - appBar.preferredSize.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar,
      backgroundColor: lTheme == true ? Color(mycolor2[0]) : Color(0xff15171e),
      bottomNavigationBar: _index == "iKontestPage"
          ? Container(
              height: screenSize*0.07,
              child: BottomAppBar(
                elevation: 5,
                color: lTheme == true ? Color(mycolor2[0]) : Color(0xff15171e),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    navbarButton("iKontest", Icons.home, Feed()),
                    navbarButton("Contest", Icons.compare, Contest()),
                    navbarButton("Upload", Icons.add_circle, UploadScr()),
                    navbarButton("Notification", Icons.notifications_active,
                        NotificationPage()),
                    navbarButton("Profile", Icons.account_circle,
                        PersonProfile(mycolor, mycolor2, lTheme)),
                  ],
                ),
              ),
            )
          : null,
      drawer: Container(
        color: Color(0xffffffff),
        child: Drawer(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              UserAccountsDrawerHeader(
                arrowColor: Colors.white,
                accountName: Text(
                  " iKontest",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(mycolor2[0]),
                    fontSize: 50,
                    fontFamily: "Bauhaus-93",
                  ),
                ),
                accountEmail: Text(
                  "  iKontest",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xff3a4256),
                    fontSize: 90,
                    fontFamily: "Bauhaus-93",
                  ),
                ),
                onDetailsPressed: () {
                  setState(() {
                    lTheme = !lTheme;
                  });
                },
              ),
              drawerTile(Icons.home, "Home", "iKontestPage"),
              drawerTile(Icons.compare, "Contests", "Contests"),
              drawerTile(Icons.photo_size_select_actual, "Wallpapers", "Wallpapers"),
              drawerTile(Icons.bookmark, "Saved", "Saved"),
              drawerTile(Icons.add_a_photo, "Add my Wallpaper", "Media Request"),
              drawerTile(Icons.group_add, "Invite Friends", "Invite Friends"),
              drawerTile(Icons.settings, "Settings", "Settings"),
              ListTile(leading: Icon(Icons.cancel),title:Text("Logout"),
              onTap: (){
                signOutGoogle();
              },),
              drawerTile(Icons.help, "FAQ", "FAQ"),
              drawerTile(Icons.info_outline, "About", "About"),
              ListTile(
                subtitle: Text("iKontest v1.0.1"),
              ),
            ],
          ),
        ),
      ),
      body: _index == "iKontestPage" ? firtsPage() :  bodyFunction(_index)); 
  }

  void signOutGoogle() async {
    await widget._googleSignIn.signOut();

    print("User Sign Out");
  }

  firtsPage() {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      decoration: BoxDecoration(
        color: lTheme == true
            ? Colors.white
            : _icoColor == "Notifications" ? Color(0xff15171e) : Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: _boxCall,
    );
  }

  bodyFunction(String _index) {
    if (_index == "About")
      return About();
    else if (_index == "Wallpapers")
      return Wallpapers();
    else if (_index == "Contests")
      return Contests();
    else if (_index == "Saved")
      return Saved(lTheme);
    else if (_index == "Media Request")
      return MediaReq();
    else if (_index == "Invite Friends")
      return Invite(lTheme);
    else if (_index == "Settings")
      return Settings();
    else if (_index == "FAQ")
      return FAQ();
    else
      return firtsPage();
  }

  navbarButton(String name, IconData icon, Widget func) {
    return IconButton(
        color: _icoColor == name
            ? Color(0xffff471a)
            : lTheme == true ? Color(mycolor2[1]) : Color(mycolor2[0]),
        icon: Icon(
          icon,
        ),
        onPressed: () {
          super.setState(() {
            _boxCall = func;
            _icoColor = name;
          });
        });
  }

  drawerTile(IconData icon, String title, String name) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      selected: _index == name ? true : false,
      onTap: () {
        super.setState(() {
          _index = name;
        });
        Navigator.of(context).pop();
      },
    );
  }
}
