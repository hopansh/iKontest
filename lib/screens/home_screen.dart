import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ikontest/functions/bodycall_function.dart';
import 'package:ikontest/screens/personProfile_screen.dart';
class HomeScreen extends StatefulWidget{
  
  @override
  _HomeScreenState createState() => _HomeScreenState();
  
}

class _HomeScreenState extends State<HomeScreen> {
String _index="iKontest";
  @override
  Widget build(BuildContext context){
return Scaffold(
  backgroundColor: Colors.white,
  appBar: AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    title: Text(_index,style: TextStyle(fontSize: 27,color: Color(0xff568e8f))),
    actions: <Widget>[
      IconButton(icon: _index=="iKontest" ? Icon(Icons.person_pin): Icon(Icons.search),
      iconSize: 35,
          onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PersonProfile()),
                );
              },
      )
    ],
  ),
  drawer: Drawer(
    
    child: ListView(
      dragStartBehavior: DragStartBehavior.start,
      physics: BouncingScrollPhysics(),
      children: <Widget>[
      
      UserAccountsDrawerHeader(
        arrowColor: Colors.black,
        accountName: Text(" iKontest" ,textAlign: TextAlign.left,style: TextStyle(color:Colors.white,fontSize: 50,fontFamily: "Bauhaus-93",),), 
        accountEmail: Text("  iKontest" ,textAlign: TextAlign.left,style: TextStyle(color:Color(0xff80b1b3),fontSize: 90,fontFamily: "Bauhaus-93",),), 
      /// currentAccountPicture: CircleAvatar(backgroundImage : AssetImage("assets/images/icon.png")),
onDetailsPressed: (){},
        ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("Home"),
      selected: _index == "iKontest"
                           ? true
                           : false,
         onTap: (){
            super.setState(() {
                       _index = "iKontest";
                      });
          Navigator.of(context).pop();
      },
      ),
       ListTile(
        leading: Icon(Icons.compare),
        title: Text("Contests"),
         selected: _index == "Contests"
                           ? true
                           : false,
         onTap: (){
            super.setState(() {
                       _index = "Contests";
                      });
          Navigator.of(context).pop();
      },
      ),
       ListTile(
        leading: Icon(Icons.photo_size_select_actual),
        title: Text("Wallpapers"),
       selected: _index == "Wallpapers"
                           ? true
                           : false,
         onTap: (){
            super.setState(() {
                       _index = "Wallpapers";
                      });
          Navigator.of(context).pop();
      },
      ),
     ListTile(
        leading: Icon(Icons.bookmark),
        title: Text("Saved"),
      selected: _index == "Saved"
                           ? true
                           : false,
         onTap: (){
            super.setState(() {
                       _index = "Saved";
                      });
          Navigator.of(context).pop();
      },
      ),
       ListTile(
        leading: Icon(Icons.add_a_photo),
        title: Text("Media Request"),
     selected: _index == "Media Request"
                           ? true
                           : false,
         onTap: (){
            super.setState(() {
                       _index = "Media Request";
                      });
          Navigator.of(context).pop();
      },
      ),
      ListTile(
        leading: Icon(Icons.group_add),
        title: Text("Invite Friends"),
        selected: _index == "Invite Friends"
                           ? true
                           : false,
         onTap: (){
            super.setState(() {
                       _index = "Invite Friends";
                      });
          Navigator.of(context).pop();
      },
      ),
       ListTile(
        leading: Icon(Icons.settings),
        title: Text("Settings"),
        selected: _index == "Settings"
                           ? true
                           : false,
         onTap: (){
            super.setState(() {
                       _index = "Settings";
                      });
          Navigator.of(context).pop();
      },
      ),
      Divider(),
       ListTile(
        leading: Icon(Icons.help),
        title: Text("FAQ"),
        selected: _index == "FAQ"
                           ? true
                           : false,
         onTap: (){
            super.setState(() {
                       _index = "FAQ";
                      });
          Navigator.of(context).pop();
      },
       
      ),
       ListTile(
        leading: Icon(Icons.info_outline),
        title: Text("About"),
       selected: _index == "About"
                           ? true
                           : false,
         onTap: (){
            super.setState(() {
                       _index = "About";
                      });
          Navigator.of(context).pop();
      },
   
      ),
       ListTile(
              subtitle: Text("iKontest v1.0.1"),
            ),
    ],),
  ),
  body: BodyFunction(_index),
);
  }
}