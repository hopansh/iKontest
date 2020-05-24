import 'package:flutter/material.dart';
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
  @override
  _HomeState createState() => _HomeState();
  void setState(fn) {}
}

class _HomeState extends State<Home> {
  StatefulWidget _boxCall = Feed();
  String _icoColor = "iKontest";
  String _index = "iKontestPage";
  bool lTheme = false;
  List<int> mycolor2 = [0xffffffff, 0xff80ccff];
  List<int> mycolor = [0xff15171e, 0xffff471a];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iKontest',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        scaffoldBackgroundColor:
            lTheme == true ? Color(mycolor2[0]) : Color(0xFF15171e),
        primaryColor: lTheme == true ? Color(mycolor2[0]) : Color(0xFF15171e),
        backgroundColor:
            lTheme == true ? Color(mycolor2[0]) : Color(0xFF15171e),
        splashColor: Color(0xFF3a4256),
        highlightColor: Color(0xff959eb7),
        primaryColorLight: Color(mycolor[0]),
        primaryColorDark: Color(0xff000000),
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(_index == "iKontestPage" ? _icoColor : _index,
              style: TextStyle(
                fontSize: 27,
                fontFamily: "Bauhaus-93",
                color: lTheme == true ? Color(mycolor2[1]) : Color(mycolor2[0]),
              )),
          actions: <Widget>[
            IconButton(
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
        ),
        backgroundColor:
            lTheme == true ? Color(mycolor2[0]) : Color(0xff15171e),
        bottomNavigationBar: _index == "iKontestPage"
            ? Container(
                height: 50.0,
                child: BottomAppBar(
                  elevation: 5,
                  color:
                      lTheme == true ? Color(mycolor2[0]) : Color(0xff15171e),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                          color: _icoColor == "iKontest"
                              ? Color(0xffff471a)
                              : lTheme == true
                                  ? Color(mycolor2[1])
                                  : Color(mycolor2[0]),
                          icon: Icon(
                            Icons.home,
                          ),
                          onPressed: () {
                            super.setState(() {
                              _boxCall = Feed();
                              _icoColor = "iKontest";
                            });
                          }),
                      IconButton(
                          color: _icoColor == "Contest"
                              ? Color(0xffff471a)
                              : lTheme == true
                                  ? Color(mycolor2[1])
                                  : Color(mycolor2[0]),
                          icon: Icon(
                            Icons.compare,
                          ),
                          onPressed: () {
                            super.setState(() {
                              _boxCall = Contest();
                              _icoColor = "Contest";
                            });
                          }),
                      IconButton(
                          color: _icoColor == "Upload"
                              ? Color(0xffff471a)
                              : lTheme == true
                                  ? Color(mycolor2[1])
                                  : Color(mycolor2[0]),
                          icon: Icon(
                            Icons.add_circle,
                          ),
                          onPressed: () {
                            super.setState(() {
                              _boxCall = UploadScr();
                              _icoColor = "Upload";
                            });
                          }),
                      IconButton(
                        color: _icoColor == "Notifications"
                            ? Color(0xffff471a)
                            : lTheme == true
                                ? Color(mycolor2[1])
                                : Color(mycolor2[0]),
                        icon: Icon(
                          Icons.notifications_active,
                        ),
                        onPressed: () {
                          super.setState(() {
                            _icoColor = "Notifications";
                            _boxCall = NotificationPage();
                          });
                        },
                      ),
                      IconButton(
                        color: _icoColor == "Profile"
                            ? Color(0xffff471a)
                            : lTheme == true
                                ? Color(mycolor2[1])
                                : Color(mycolor2[0]),
                        icon: Icon(
                          Icons.account_circle,
                        ),
                        onPressed: () {
                          super.setState(() {
                            _icoColor = "Profile";
                            _boxCall = PersonProfile(mycolor, mycolor2, lTheme);
                          });
                        },
                      )
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
                  arrowColor: lTheme == true ? Colors.black : Colors.white,

                  accountName: Text(
                    " iKontest",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: lTheme == true
                          ? Color(mycolor2[1])
                          : Color(mycolor2[0]),
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

                  /// currentAccountPicture: CircleAvatar(backgroundImage : AssetImage("assets/images/icon.png")),
                  onDetailsPressed: () {
                    setState(() {
                      lTheme = !lTheme;
                    });
                  },
                ),
                Container(
                  color:
                      lTheme == false ? Color(0xffffffff) : Color(mycolor2[1]),
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    selected: _index == "iKontestPage" ? true : false,
                    onTap: () {
                      super.setState(() {
                        _index = "iKontestPage";
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Container(
                  color:
                      lTheme == false ? Color(0xffffffff) : Color(mycolor2[1]),
                  child: ListTile(
                    leading: Icon(Icons.compare),
                    title: Text("Contests"),
                    selected: _index == "Contests" ? true : false,
                    onTap: () {
                      super.setState(() {
                        _index = "Contests";
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Container(
                  color:
                      lTheme == false ? Color(0xffffffff) : Color(mycolor2[1]),
                  child: ListTile(
                    leading: Icon(Icons.photo_size_select_actual),
                    title: Text("Wallpapers"),
                    selected: _index == "Wallpapers" ? true : false,
                    onTap: () {
                      super.setState(() {
                        _index = "Wallpapers";
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Container(
                  color:
                      lTheme == false ? Color(0xffffffff) : Color(mycolor2[1]),
                  child: ListTile(
                    leading: Icon(Icons.bookmark),
                    title: Text("Saved"),
                    selected: _index == "Saved" ? true : false,
                    onTap: () {
                      super.setState(() {
                        _index = "Saved";
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Container(
                  color:
                      lTheme == false ? Color(0xffffffff) : Color(mycolor2[1]),
                  child: ListTile(
                    leading: Icon(Icons.add_a_photo),
                    title: Text("Media Request"),
                    selected: _index == "Media Request" ? true : false,
                    onTap: () {
                      super.setState(() {
                        _index = "Media Request";
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Container(
                  color:
                      lTheme == false ? Color(0xffffffff) : Color(mycolor2[1]),
                  child: ListTile(
                    leading: Icon(Icons.group_add),
                    title: Text("Invite Friends"),
                    selected: _index == "Invite Friends" ? true : false,
                    onTap: () {
                      super.setState(() {
                        _index = "Invite Friends";
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Container(
                  color:
                      lTheme == false ? Color(0xffffffff) : Color(mycolor2[1]),
                  child: ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    selected: _index == "Settings" ? true : false,
                    onTap: () {
                      super.setState(() {
                        _index = "Settings";
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Container(
                  color:
                      lTheme == false ? Color(0xffffffff) : Color(mycolor2[1]),
                  child: ListTile(
                    leading: Icon(Icons.help),
                    title: Text("FAQ"),
                    selected: _index == "FAQ" ? true : false,
                    onTap: () {
                      super.setState(() {
                        _index = "FAQ";
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Container(
                  color:
                      lTheme == false ? Color(0xffffffff) : Color(mycolor2[1]),
                  child: ListTile(
                    leading: Icon(Icons.info_outline),
                    title: Text("About"),
                    selected: _index == "About" ? true : false,
                    onTap: () {
                      super.setState(() {
                        _index = "About";
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                ListTile(
                  subtitle: Text("iKontest v1.0.1"),
                ),
              ],
            ),
          ),
        ),
        body: _index == "iKontestPage" ? firtsPage() : bodyFunction(_index),
      ),
    );
  }

  firtsPage() {
    return Container(
      height: 700,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      decoration: BoxDecoration(
        color: lTheme==true? Colors.white :  _icoColor == "Notifications"
            ? Color(0xff15171e)
            : Colors.white,
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
      return Saved();
    else if (_index == "Media Request")
      return MediaReq();
    else if (_index == "Invite Friends")
      return Invite();
    else if (_index == "Settings")
      return Settings();
    else if (_index == "FAQ")
      return FAQ();
    else
      return firtsPage();
  }
}
