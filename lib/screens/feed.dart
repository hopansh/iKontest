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
    
    Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: ListTile(
        leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/dp1.png"),),
        title:Text("Hopansh Gahlot",style: TextStyle(fontWeight: FontWeight.bold),),
        trailing: IconButton(icon:Icon(Icons.more_vert),onPressed: null,),
        
      ),
    ),
    Container(
      height: 250,
      child: Image.asset("assets/images/dp1.png",fit: BoxFit.cover,)),
    Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: ListTile(leading: IconButton(icon:Icon(Icons.favorite_border),onPressed: null),
      title: Text("Likes"),
      trailing: IconButton(icon: Icon(Icons.bookmark_border), onPressed: null),),
    ),
    Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: ListTile(
        leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/dp1.png"),),
        title:Text("Hopansh Gahlot",style: TextStyle(fontWeight: FontWeight.bold),),
        trailing: IconButton(icon:Icon(Icons.more_vert),onPressed: null,),
        
      ),
    ),
    Container(
      height: 250,
      child: Image.asset("assets/images/dp1.png",fit: BoxFit.cover,)),
    Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: ListTile(leading: IconButton(icon:Icon(Icons.favorite_border),onPressed: null),
      title: Text("Likes"),
      trailing: IconButton(icon: Icon(Icons.bookmark_border), onPressed: null),),
    ),
    Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: ListTile(
        leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/dp1.png"),),
        title:Text("Hopansh Gahlot",style: TextStyle(fontWeight: FontWeight.bold),),
        trailing: IconButton(icon:Icon(Icons.more_vert),onPressed: null,),
        
      ),
    ),
    Container(
      height: 250,
      child: Image.asset("assets/images/dp1.png",fit: BoxFit.cover,)),
    Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: ListTile(leading: IconButton(icon:Icon(Icons.favorite_border),onPressed: null),
      title: Text("Likes"),
      trailing: IconButton(icon: Icon(Icons.bookmark_border), onPressed: null),),
    ),
  ],);
}
}

