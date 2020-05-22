

import 'package:flutter/material.dart';

class MediaReq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            margin: EdgeInsets.fromLTRB(5, 20, 5, 10),
            decoration: BoxDecoration(
              color: Color(0xffe0ebeb),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
            ),
            child: ListView(
              padding:EdgeInsets.fromLTRB(10, 30, 10, 30),
              children: <Widget>[
              Text("Submit your Image For Wallpaper below:",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child:Icon(Icons.add_a_photo,size:80)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  IconButton(icon: Icon(Icons.check_circle_outline), onPressed: null,),
                  Text("Agree to Terms & Condition")],),
                 FloatingActionButton.extended(onPressed: null, label: Text("Upload",style: TextStyle(fontWeight: FontWeight.bold),),
   shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.all(Radius.circular(30.0))),

      foregroundColor: Colors.white,
      )
            ],),
          ),
        ],
      ),
    );
  }
}
