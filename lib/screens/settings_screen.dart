import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../screens/create_account_screen.dart';
import '../models/user.dart';
import '../screens/home_screen.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: 280,
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          
           ListTile(
            title: Text(
              "Theme",
              style: TextStyle(color: Color(0xff15171e)),
            ),
            leading: Icon(Icons.view_quilt),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
           ListTile(
            title: Text(
              "Account Settings",
              style: TextStyle(color: Color(0xff15171e)),
            ),
            leading: Icon(Icons.accessibility_new),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
           ListTile(
            title: Text(
              "Notification",
              style: TextStyle(color: Color(0xff15171e)),
            ),
            leading: Icon(Icons.notification_important),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            title: Text(
              "Logout",
              style: TextStyle(color: Color(0xffff471a)),
            ),
            leading: Icon(Icons.person_outline),
            trailing: Icon(Icons.call_missed_outgoing),
          ),
          
        ],
      ),
    ));
  }
}
