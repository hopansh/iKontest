import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final appBar = AppBar(
    title: Text("Hopansh Gahlot"),
  );

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.height - appBar.preferredSize.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: <Widget>[
          Container(
              height: screenSize * 0.18,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Row(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                      radius: screenWidth*0.13,
                      backgroundImage: AssetImage(
                        "assets/images/dp1.png",
                      )),
                ),
                Container(
                  width: (screenWidth*0.50),
                  child:Column(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 2, 2, 0),
                      child: Text("Hopansh Gahlot",style: TextStyle(fontSize:screenWidth*0.06),textAlign: TextAlign.center,)),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(10, 1, 2, 2),
                     child: Text("Hi!! this is my bio\n14 oct 2000\niKontest\nhello\hiiii\nhsishd",textAlign: TextAlign.left,),
                   ),
                  ],)
                )
              ])),
          Container(
            height: screenSize * 0.05,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
            ),
            child: Row(
              children: <Widget>[
                Container(
                    height: screenSize * 0.05,
                    width: screenWidth * 0.5,
                    child: Center(
                        child: Text(
                      "256 Followers",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ))),
                Container(
                  height: screenSize * 0.05,
                  width: screenWidth * 0.5,
                  decoration: BoxDecoration(
                    color: Color(0xff3a4256),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: GestureDetector(
                        child: Text(
                      "+Follow",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height:screenSize*0.01),
          Container(
            height:screenSize*0.06,
          decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
          ),
          child: Center(child:Text("Posts",style: TextStyle(fontWeight:FontWeight.bold,fontSize:20),)),),
          Container(
            color:Colors.white,
            height: screenSize * 0.7,
            child: GridView.count(
                physics: BouncingScrollPhysics(),
                crossAxisCount: 3,
                children: List.generate(
                    19,
                    (index) => Card(
                          elevation: 5,
                          child: Container(
                              child: new Image.asset(
                            "assets/images/dp1.png",
                            fit: BoxFit.fill,
                          )),
                        ))),
          )
        ],
      ),
    );
  }
}
