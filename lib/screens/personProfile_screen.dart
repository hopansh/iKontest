import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:ikontest/screens/posted.dart' as posted;
import 'package:ikontest/screens/rewarded.dart' as rewarded;

class PersonProfile extends StatefulWidget {
  
  PersonProfile(this.mycolor,this.mycolor2,this.lTheme);
  List<int> mycolor;
  List<int> mycolor2;
bool lTheme=true;
  @override
  _PersonProfileState createState() => _PersonProfileState();
}

class _PersonProfileState extends State<PersonProfile> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState(){
    controller=new TabController(length: 2, vsync: this);
    super.initState();
  }
  
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    
    return Container(
      
        color: widget.lTheme==false? Color(0xff15171e): Color(widget.mycolor2[0]),
        child: ListView(physics: NeverScrollableScrollPhysics(), children: <
            Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
              ),
            ),
            height: 100,
            child: Row(
              children: <Widget>[
                Image.asset("assets/images/dp1.png"),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 6),
                      child: Text("Hopansh Gahlot",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25)),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                          child: Text("Followers\n1275",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black54)),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                          child: Text("Posts\n54",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black54)),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                )),
            child: Text(
                "Follow me @itsHopansh on instagram\nKeep Supporting\n14 Oct 2020",
                style: TextStyle(
                  fontSize: 18,
                )),
          ),
      TabBar(
        
         controller: controller,
         labelColor: Color(0xffff471a),
         unselectedLabelColor: widget.lTheme==false?Colors.white70: Colors.black,
         indicatorSize: TabBarIndicatorSize.tab,
         indicatorColor: Color(0xffff471a),
         tabs: <Widget>[
            new Tab(icon:Icon(Icons.image,)),
            new Tab(icon:Icon(Icons.card_giftcard)),
       ]),
    new Container(
      
      height: 510,
                       padding: EdgeInsets.fromLTRB(5, 5, 5, 37),
                       child: new TabBarView(
                         controller: controller,
                         children: <Tab>[
                           Tab(child: posted.Posted()),
                           Tab(child: rewarded.Rewarded(),)
                         ]
                       ),
      )  ]
    )
    );
  }
}
