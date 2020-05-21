import 'package:flutter/material.dart';
class PersonProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        elevation: 0,
      ),
      body: ListView(
        
        children: <Widget>[
        Container(
          height: 160,
          color: Color(0xff80b1b3),
          child: Center(
            child: Image.asset("assets/images/boy.png",height: 150,),
          ),
        ),
        Container(
          height: 60,
          color: Color(0xff80b1b3),
          child: Center(
            child: Text("Hopansh Gahlot",style:TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold)),
          ),
        ),
        ListTile(
          dense: true,
          leading: Text("Username:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
          trailing: Text("@hopansh",style: TextStyle(fontSize: 18)),
        ),
         ListTile(
           dense: true,
          leading: Text("Email:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
          trailing: Text("hopanshgahlot@gmail.com",style: TextStyle(fontSize: 18)),
        ),
         ListTile(
           dense: true,
          leading: Text("Phone:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
          trailing: Text("+91-7017585874",style: TextStyle(fontSize: 18)),
        ),
      ],),
      
    );
  }
}