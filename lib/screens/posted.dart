import 'package:flutter/material.dart';
class Posted extends StatefulWidget {
  

  @override
  _PostedState createState() => _PostedState();
}

class _PostedState extends State<Posted> {
  @override
  Widget build(BuildContext context) {
    return new GridView.count(
     physics: BouncingScrollPhysics(),
      crossAxisCount: 3,
    children:
      List.generate(19, (index) =>  Card(
        elevation: 5,
        child: Container(
          
          child: new Image.asset("assets/images/dp1.png",fit: BoxFit.fill,)
        ),
      ))
    );
  }
}