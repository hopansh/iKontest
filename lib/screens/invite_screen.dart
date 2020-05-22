import 'package:flutter/material.dart';
import 'package:ikontest/screens/userProfile_screen.dart';

class Invite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Center(
                  child: Image.asset("assets/images/Play_store.png"),
                ),
                ListTile(
                  title:Icon(Icons.share),
                  leading:Text("PlayStore URL below:"),
                )
                
                
              ],
            ))
      ],
    ));
  }
}
