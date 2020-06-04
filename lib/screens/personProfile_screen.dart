import 'package:flutter/material.dart';

import 'dart:ui';
import 'package:ikontest/screens/posted.dart' as posted;
import 'package:ikontest/screens/rewarded.dart' as rewarded;

class PersonProfile extends StatefulWidget {
  PersonProfile(this.mycolor, this.mycolor2, this.lTheme);
  final List<int> mycolor;
  final List<int> mycolor2;

  bool lTheme = true;
  @override
  _PersonProfileState createState() => _PersonProfileState();
}

class _PersonProfileState extends State<PersonProfile>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text("Hopansh Gahlot"),
    );
    final screenSize =
        MediaQuery.of(context).size.height - appBar.preferredSize.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(children: <Widget>[
      Container(
          height: screenSize * 0.18,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  radius: screenWidth * 0.13,
                  backgroundImage: AssetImage(
                    "assets/images/dp1.png",
                  )),
            ),
            Container(
                width: (screenWidth * 0.50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.fromLTRB(10, 2, 2, 0),
                        child: Text(
                          "Hopansh Gahlot",
                          style: TextStyle(fontSize: screenWidth * 0.06),
                          textAlign: TextAlign.center,
                        )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 1, 2, 2),
                      child: Text(
                        "Hi!! this is my bio\n14 oct 2000\niKontest\nhello\hiiii\nhsishd",
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ))
          ])),
      Container(
        height: screenSize * 0.05,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30)),
        ),
        child: Row(
          children: <Widget>[
            Container(
                height: screenSize * 0.05,
                width: screenWidth * 0.5,
                child: Center(
                    child: Text(
                  "256 Followers",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ))),
            Container(
                height: screenSize * 0.05,
                width: screenWidth * 0.5,
                decoration: BoxDecoration(
                  color: Color(0xff3a4256),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Center(
                  child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                          Text("  Edit Profile",
                              style: TextStyle(color: Colors.white)),
                        ],
                      )),
                ))
          ],
        ),
      ),
      Container(
        height: screenSize * 0.06,
        // color: widget.lTheme==true?Colors.white:Color(0xff15171e),
        child: TabBar(
            controller: controller,
            labelColor: Color(0xffff471a),
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Color(0xffff471a),
            tabs: <Widget>[
              new Tab(
                  icon: Icon(
                Icons.image,
              )),
              new Tab(icon: Icon(Icons.card_giftcard)),
            ]),
      ),
      new Container(
        height: screenSize * 0.64,
        // color: widget.lTheme==true?Colors.white:Color(0xff15171e),
        padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
        child: new TabBarView(controller: controller, children: <Tab>[
          Tab(child: posted.Posted()),
          Tab(
            child: rewarded.Rewarded(screenSize),
          )
        ]),
      )
    ]);
  }
}
