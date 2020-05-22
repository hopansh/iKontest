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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text("@itsHopansh"),
        ),
        body: Container(
          color: Color(0xff80b1b3),
        child: ListView(physics: NeverScrollableScrollPhysics() , children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              height: 100,
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  size: 80,
                ),
                title: Text(
                  "Hopansh Gahlot",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 110,
                        child: Text("Followers\n243",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20)),
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        child: Text(
                          "Posts\n52",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ]),
              ),
            ),
            Container(
              color: Color(0xff80b1b3),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text("Follow me @itsHopansh on instagram\nKeep Supporting",
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
            Container(
              height: 670,
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: ListView(
                physics: BouncingScrollPhysics(),
 

                children: <Widget>[
                  Container(
                      height: 45.0,
               padding: EdgeInsets.symmetric(horizontal: 40,vertical: 5),
               margin: EdgeInsets.symmetric(horizontal:40),
                      color: Colors.white,
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
                                            ? Color(0xff305050)
                                            : Color(0xffafcfcf),
                                        fontSize:
                                            index == _feedIndex ? 25.0 : 20),
                                  )),
                            );
                          })),
                          Divider(thickness:3)
                ],
              ),
            ),
          ]),
        ));
  }
}
