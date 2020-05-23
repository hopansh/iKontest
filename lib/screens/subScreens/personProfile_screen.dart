import 'package:flutter/material.dart';

class PersonProfile extends StatefulWidget {
  @override
  _PersonProfileState createState() => _PersonProfileState();
}

class _PersonProfileState extends State<PersonProfile> {
  @override
  int _feedIndex = 0;
  final List<String> category = ["Posts", "Liked"];
  Widget build(BuildContext context) {
    return  Container(
          color: Color(0xff15171e),
          child: ListView(physics: NeverScrollableScrollPhysics(), children: <
              Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                ),
              ),
              height: 100,
              child: Row(
                children: <Widget>[
                  Image.asset("assets/images/dp1.png"),
                  Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.symmetric(horizontal:0,vertical: 6),
                      child:Text("Hopansh Gahlot",textAlign: TextAlign.center,style:TextStyle(fontSize:25)),
                      ),
                   
                      Row(children: <Widget>[
                     Padding(padding: EdgeInsets.symmetric(horizontal:25,vertical: 5),
                      child: Text("Followers\n1275",textAlign: TextAlign.center,style:TextStyle(fontSize:20,color: Colors.black54)),),
                          Padding(padding: EdgeInsets.symmetric(horizontal:25,vertical: 5),
                      child: Text("Posts\n54",textAlign: TextAlign.center,style:TextStyle(fontSize:20,color: Colors.black54)),
                      ),
                       
                      ],)
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                  )),
              child: Text(
                  "Follow me @itsHopansh on instagram\nKeep Supporting\n14 Oct 2020",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
            Container(
              height: 670,
              margin: EdgeInsets.symmetric(horizontal: 5),
              color: Colors.white,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  Container(
                      height: 45.0,
                      color: Color(0xff15171e),
                      padding:
                          EdgeInsets.symmetric(horizontal: 80, vertical: 5),
                      child: ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: category.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _feedIndex = index;
                                });
                              },
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(25, 5, 20, 0),
                                  child: Text(
                                    category[index],
                                    style: TextStyle(
                                        color: index == _feedIndex
                                            ? Colors.white
                                            : Color(0xffa4adc1),
                                        fontSize:
                                            index == _feedIndex ? 25.0 : 20),
                                  )),
                            );
                          })),
                ],
              ),
            ),
              ]));
  }
}