import 'package:flutter/material.dart';


class Invite extends StatelessWidget {
  bool lTheme=false;
  Invite(this.lTheme);
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Container(
            color: lTheme==true?Colors.white: Color(0xff3a4256),
            child: Column(
              children: <Widget>[
                Center(
                  child: Image.asset("assets/images/Play_Store.png",height: 200,width: 200,),
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
