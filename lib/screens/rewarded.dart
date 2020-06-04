import 'package:flutter/material.dart';

class Rewarded extends StatefulWidget {
  final scHeight;
  Rewarded(this.scHeight);
  @override
  _RewardedState createState() => _RewardedState();
}

class _RewardedState extends State<Rewarded> {

  @override
  Widget build(BuildContext context) {
    final valLike=83;
    final valPart=25;
    final valInvites=20;
    final val=valPart+valLike+valInvites;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height:widget.scHeight*0.07,
          child: ListTile(
            title:Text("Total Rewards:"),
            leading:Icon(Icons.card_giftcard,color: Color(0xffff471a),),
            trailing: Text("$val"),
          ),),
          ListTile(
            leading: Icon(Icons.compare,color: Colors.black,),
            title: Text("Contest Participation:"),
            trailing: Text("$valPart"),
          ),
          ListTile(
            leading: Icon(Icons.favorite,color: Colors.black,),
            title: Text("Likes:"),
            trailing: Text("$valLike"),
          ),
           ListTile(
             leading: Icon(Icons.person_add,color: Colors.black,),
            title: Text("Invites:"),
            trailing: Text("$valInvites"),
          ),
      ],
    );
  }
}
