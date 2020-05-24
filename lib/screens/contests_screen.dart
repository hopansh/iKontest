import 'package:flutter/material.dart';
import 'package:ikontest/screens/contest.dart';
class Contests extends StatefulWidget{
  @override
  _ContestsState createState() => _ContestsState();
}

class _ContestsState extends State<Contests> {
  @override
  Widget build (BuildContext context){
    return Scaffold(
     backgroundColor: Colors.white,
      
        body: Stack(children: <Widget>[ListView( 
          padding: EdgeInsets.symmetric(horizontal: 5),
          children: <Widget>[
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
                   child: Contest(),
      ),
          ]
        )
        ],)
    );
  }
}
