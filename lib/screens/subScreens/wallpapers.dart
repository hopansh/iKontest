import 'package:flutter/material.dart';
class Wall extends StatefulWidget{
  @override
  _WallState createState() => _WallState();
}

class _WallState extends State<Wall> {
  @override
  Widget build (BuildContext context){
    return ListView(
      padding: EdgeInsets.fromLTRB(5, 40, 5, 35),
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        Card(
          child:Image.asset(
          "assets/images/feed1.jpg",),
        ),
        Card(
          child:Image.asset(
          "assets/images/feed2.jpg",),
        ),
        Card(
          child:Image.asset(
          "assets/images/feed1.jpg",),
        ),
      ]);
  }
}