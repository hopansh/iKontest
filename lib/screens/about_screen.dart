import 'package:flutter/material.dart';
class About extends StatelessWidget{
  @override
  Widget build (BuildContext context){
   final  appBar= AppBar(
        title:Text("About"),
      );
   final scHeight= MediaQuery.of(context).size.height-appBar.preferredSize.height;
    final scWidth= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: scHeight,
        width: scWidth,
        color:Colors.white,
        child: Column(children: <Widget>[
          Center(child:Text("About Us:",style:TextStyle(fontSize: 40,fontWeight:FontWeight.bold))),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: const Text("We are a group of photography enthusiasts who want to provide a platform for fellow photography lovers,budding photographers and models to create and showcase art they are passionate.\n Tell meaningful stories and capture beautiful imagery, meet artists and models and form communities all while earning from it",textAlign: TextAlign.justify,),
          )
        ],),
      )
    );
  }
}