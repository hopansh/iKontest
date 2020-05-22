import 'package:flutter/material.dart';
import 'package:ikontest/screens/search_screen.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(10, 5, 5, 0),
          leading: Icon(Icons.person_pin, size: 40),
          title: Text(
            "Hopansh Gahlot",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          subtitle: Text("Najibabad"),
        ),
        Image.asset(
          "assets/images/feed1.jpg",
        ),
        ListTile(
          
          leading: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                setState(() {
                  print("Liked");
                });
              }),
          trailing: IconButton(icon: Icon(Icons.send), onPressed: () {}),
          title: Text("163 Likes"),
          dense: false,
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 20),
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(10, 5, 5, 0),
          leading: Icon(Icons.person_pin, size: 40),
          title: Text(
            "Hopansh Gahlot",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          subtitle: Text("Bhubaneshwar"),
        ),
        Image.asset(
          "assets/images/feed2.jpg",
        ),
        ListTile(
          leading: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                setState(() {
                  print("Liked");
                });
              }),
          trailing: IconButton(icon: Icon(Icons.send), onPressed: () {}),
          title: Text("128 Likes"),
          dense: false,
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 20),
        ),
      ],
    );
  }
}
