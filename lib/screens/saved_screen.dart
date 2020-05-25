import 'package:flutter/material.dart';
class Saved extends StatefulWidget{
  bool _lTheme=false;
  Saved(this._lTheme);
  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> with SingleTickerProviderStateMixin{
  TabController _savecontroller;
    @override
  void initState(){
    var tabController = new TabController(length: 2, vsync: this);
        _savecontroller = tabController;
    super.initState();
  }
  
  @override
  void dispose(){
    _savecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build (BuildContext context){
    return Scaffold( backgroundColor: widget._lTheme==true? Colors.white: Color(0xff15171e),
      
        body: ListView( 
          padding: EdgeInsets.symmetric(horizontal: 5),
          children: <Widget>[
            TabBar(
        
         controller: _savecontroller,
         labelColor: Color(0xffff471a),
         unselectedLabelColor: widget._lTheme==false?Colors.white70: Colors.black,
         indicatorSize: TabBarIndicatorSize.tab,
         indicatorColor: Color(0xffff471a),
         tabs: <Widget>[
            new Tab(text: "Feed"),
            new Tab(text: "Wallpapers",),
       ]),
    new Container(
      height: 500,
                       padding: EdgeInsets.fromLTRB(5, 5, 5, 40),
                       child: new TabBarView(
                         controller: _savecontroller,
                         children: <Tab>[
                           Tab(child: Text("Feeds")),
                           Tab(child: Text("wallpapers"),)
                         ]
                       ),
      ) 
          ],
        ));
  }
}
