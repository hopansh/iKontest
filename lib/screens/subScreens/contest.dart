import 'package:flutter/material.dart';
import 'package:ikontest/screens/search_screen.dart';
class Contest extends StatefulWidget {
  @override
  _ContestState createState() => _ContestState();
}

class _ContestState extends State<Contest> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 35),
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 5, 10, 2),
          title:Text("15 Days! Contest",style: TextStyle(fontSize:20),),
          leading: Icon(Icons.linked_camera,size:30),
          trailing: IconButton(icon: Icon(Icons.transit_enterexit,size: 30,), onPressed: null)
        ),
        Container(
          height: 200,
          child:ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
          Card(
          child: Image.asset("assets/images/Portraits15.jpg"),
        ),
        Card(
          child: Image.asset("assets/images/Street15.jpg"),
        ),
         Card(
          child: Image.asset("assets/images/Landscape15.jpg"),
        ),
          ],)
        ),
         ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 5, 10, 2),
          title:Text("30 Days! Contest",style: TextStyle(fontSize:20),),
          leading: Icon(Icons.attach_money,size:30),
          trailing: IconButton(icon: Icon(Icons.transit_enterexit,size: 30,), onPressed: null)
        ),
         Container(
          height: 200,
          child:ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
          Card(
          child: Image.asset("assets/images/Portraits15.jpg"),
        ),
        Card(
          child: Image.asset("assets/images/Street15.jpg"),
        ),
         Card(
          child: Image.asset("assets/images/Landscape15.jpg"),
        ),
          ],)
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 5, 10, 2),
          title:Text("45 Days! Contest",style: TextStyle(fontSize:20),),
          leading: Icon(Icons.monetization_on,size:30),
          trailing: IconButton(icon: Icon(Icons.transit_enterexit,size: 30,), onPressed: null)
        ),
         Container(
          height: 200,
          child:ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            
            children: <Widget>[
          Card(
          child: Image.asset("assets/images/Portraits15.jpg"),
        ),
        Card(
          child: Image.asset("assets/images/Street15.jpg"),
        ),
         Card(
          child: Image.asset("assets/images/Landscape15.jpg"),
        ),
          ],)
        ),
       
      ],
    );
  }
}