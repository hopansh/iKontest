import 'package:flutter/material.dart';
class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("@itsHopansh"),
      ),
      backgroundColor: Color(0xff80b1b3),
      body: ListView(children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
          height: 200,
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                    ),),
          child:Row(children: <Widget>[
            Image.asset("assets/images/boy.png",height: 100,),
            Column(children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(10, 25, 5, 10),
              child: Text("Hopansh Gahlot",style: TextStyle(fontSize:(30),),),),
            Padding(padding: EdgeInsets.fromLTRB(10, 0, 5, 10),
              child: Text("Followers\n 500",style: TextStyle(fontSize:(20),),),),
               Padding(padding: EdgeInsets.fromLTRB(10, 0, 5, 10),
              child: Text("Posts\n 49",style: TextStyle(fontSize:(20),),),),
            ],)
          ],)
        )
      ],),
    );
  }
}