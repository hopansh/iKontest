import 'package:flutter/material.dart';

class Wall extends StatefulWidget{
  @override
  _WallState createState() => _WallState();
}

class _WallState extends State<Wall> {
  final PageController ctrl= PageController();
  @override
  Widget build (BuildContext context){
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: ctrl,
      children: <Widget>[
        Container(color: Colors.yellow),
        Container(color: Colors.red),

        Container(color: Colors.blue),
      
    ],);
  }
}