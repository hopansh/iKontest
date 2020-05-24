import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[ListView(
        children: <Widget>[
          Divider(),
          Container(
            decoration: BoxDecoration(
              color:Color(0xff3a4256),
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            child: ListTile(
              title: Text("Vibhor liked your Photo",style: TextStyle(color: Colors.white)),
              leading: Icon(Icons.favorite,color: Color(0xffff471a),),
            ),
          ),
           Divider(),
          Container(
            decoration: BoxDecoration(
              color:Color(0xff3a4256),
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            child: ListTile(
              title: Text("You are ranking 3rd in Contest",style: TextStyle(color: Colors.white)),
              leading: Icon(Icons.show_chart,color: Color(0xffff471a),),
            ),
          ),
            Divider(),
                Container(
            decoration: BoxDecoration(
              color:Color(0xff3a4256),
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            child: ListTile(
              title: Text("Share your posts to gain like",style: TextStyle(color: Colors.white)),
              leading: Icon(Icons.hdr_strong,color: Color(0xffff471a),),
            ),
                ),
        ],
      ),],);
  }
}
