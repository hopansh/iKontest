import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/text.dart';

class Wallpapers extends StatefulWidget{
  @override
  _WallpapersState createState() => _WallpapersState();
}

class _WallpapersState extends State<Wallpapers> {
@override
Widget build (BuildContext context){
  return MaterialApp(
    home: Scaffold(body: FirestoreSlideshow())
  );
  }
}
class FirestoreSlideshow extends StatefulWidget {
  @override
  _FirestoreSlideshowState createState() => _FirestoreSlideshowState();
}

class _FirestoreSlideshowState extends State<FirestoreSlideshow> {
  final PageController ctrl = PageController(viewportFraction: 0.8);
  final Firestore db = Firestore.instance;
  Stream slides;
  String activeTag = 'fav';
  int currentPage =0;
  @override
  void initState(){
    _queryDb();
    ctrl.addListener(() {
      int next = ctrl.page.round();
      if(currentPage != next){
        setState((){
          currentPage = next;
        });
      }
    });

  }
    @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: slides,
    initialData:[],
    builder: (context, AsyncSnapshot snap ){
      List slideList = snap.data.toList();
      return PageView.builder(
        controller: ctrl,
        itemCount: slideList.length+1,
        itemBuilder: (context, int currentIdx){
          if (currentIdx==0){
            return _buildTagPage();
          }else if (slideList.length>=currentIdx){
            bool active = currentIdx == currentPage;
            return _buildStoryPage(slideList[currentIdx-1],active);
          }
        },
      );
    }
    );
  }
  Stream _queryDb({String tag = 'fav'}){
    Query query =db.collection('Wallpapers').where('tags',arrayContains: tag);
    slides= query.snapshots().map((list)=>list.documents.map((doc)=>doc.data));
    setState(() {
      activeTag=tag;
    });
  }

_buildStoryPage(Map data,bool active){
final double blur = active?5:0;
final double offset = active ? 10:0;
final double top = active ? 10: 20;
return AnimatedContainer(duration: Duration(milliseconds: 500 ),
curve: Curves.easeOutQuint,
margin: EdgeInsets.only(top:top,bottom:50,right:30),
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  image: DecorationImage(
     fit:BoxFit.cover,
     image: NetworkImage(data['img']),
     ),
     boxShadow: [BoxShadow(color: Colors.black54,
     blurRadius: blur,
     offset: Offset(offset,offset))]
),
child: Center(
  child: FloatingActionButton.extended(onPressed: null, label: Text("Set as Wallpaper"),backgroundColor: Colors.purple,)
),
);
}
_buildTagPage(){
  return Container(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text("Wallpapers",style:TextStyle(fontWeight: FontWeight.bold, fontSize:35)),
      Text('FILTER',style: TextStyle(color: Colors.black26),),
      _buildButton('trending'),
      _buildButton('new'),
      _buildButton('nature'),
      _buildButton('architecture'),
      _buildButton('street'),
      _buildButton('portraits'),
      _buildButton('abstract'),
      _buildButton('other'),
    ],),);
}
_buildButton(tag){
  Color color=tag==activeTag? Colors.purple: Colors.white;
  return FlatButton(
    color: color,
    onPressed: ()=> _queryDb(tag: tag),
    child: Text('#$tag'),);
}
}