import 'package:flutter/material.dart';

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
          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          leading: Icon(Icons.person_pin, size: 40),
          title: Text(
            "Hopansh Gahlot",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          trailing: IconButton(icon: Icon(Icons.more_horiz), onPressed: () {}),
             dense: true,
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
          trailing: IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {}),
          title: Text("163 Likes"),
          dense: true,
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        ),
        Divider(thickness:2),
        ListTile(
             dense: true,
          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          leading: Icon(Icons.person_pin, size: 40),
          trailing: IconButton(icon: Icon(Icons.more_horiz), onPressed: () {}),
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
             dense: true,
          leading: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                setState(() {
                  print("Liked");
                });
              }),
          trailing: IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {}),
          title: Text("128 Likes"),
         
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 20),
        ),
      ],
    );
  }
}
