import 'package:flutter/material.dart';
import 'package:ikontest/screens/search_screen.dart';
import 'package:ikontest/screens/subScreens/feed.dart';
import 'package:ikontest/screens/upload_screen.dart';
import '../screens/subScreens/wallpapers.dart';
import '../screens/subScreens/contest.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _bodyIndex = 0;
  final List<String> category = [
    "Feed", "Contests", "Wallpapers"
  ];
   final List<StatefulWidget> funcategory = [
    Feed(), Contest(), Wall()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => _bodyIndex==0? UploadScr() : SearchScreen()),
                );},
      backgroundColor: Color(0xff4d8080),
      
      child: _bodyIndex==0? Icon(Icons.add,size: 40,):Icon(Icons.search,size: 40,)),
        backgroundColor: Colors.white,
      
        body: ListView( 
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 5),
          children: <Widget>[
            Container(
            height:45.0,
            color: Colors.white,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal:15),
              physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: category.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _bodyIndex = index;
                      });
                    },
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(25, 5, 20, 0),
                        child: Text(
                          category[index],
                          style: TextStyle(
                              color: index == _bodyIndex
                                  ? Color(0xff305050)
                                  : Color(0xffafcfcf),
                              fontSize: index == _bodyIndex ? 25.0 : 20),
                        )),
                  );
                })),
            Container(
              height: 650,
              decoration: BoxDecoration(
                color: Color(0xffe0ebeb),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
                   child: funcategory[_bodyIndex],
            ),
          ],
        ));
  }
}
