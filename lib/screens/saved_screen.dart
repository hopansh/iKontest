import 'package:flutter/material.dart';
class Saved extends StatefulWidget{
  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  int _bodyIndex = 0;
  final List<String> category = [
    "Feed", "Wallpapers"
  ];
  @override
  Widget build (BuildContext context){
    return Scaffold( backgroundColor: Colors.white,
      
        body: ListView( 
          padding: EdgeInsets.symmetric(horizontal: 5),
          children: <Widget>[
            Container(
            height:70.0,
            color: Color(0xff15171e),
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
                        padding: EdgeInsets.fromLTRB(70, 10, 20, 5),
                        child: Text(
                          category[index],
                          style: TextStyle(
                              color: index == _bodyIndex
                                  ? Color(0xffffff)
                                  : Color(0xffa4adc1),
                              fontSize: index == _bodyIndex ? 25.0 : 20),
                        )),
                  );
                })),
            Container(
              height: 650,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
                   
            ),
          ],
        ));
  }
}
