import 'package:flutter/material.dart';
import 'package:ikontest/screens/subScreens/wallpapers.dart';
class Wallpapers extends StatefulWidget{
  @override
  _WallpapersState createState() => _WallpapersState();
}

class _WallpapersState extends State<Wallpapers> {
  @override
  Widget build (BuildContext context){
      return Scaffold(
     backgroundColor: Colors.white,
      
        body: ListView( 
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
                   child: Wall(),
      ),
          ]
        )
    );
  }
}