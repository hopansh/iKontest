import 'package:flutter/material.dart';
class UploadScr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 500,
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
              Text("Upload Image",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child:Icon(Icons.add_a_photo,size:80)),
                
            ],),
          ),
        ],
      ),
    );
  }
}
