import 'package:flutter/material.dart';

import 'package:ikontest/screens/login_screen.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    
  @override
  Widget build(BuildContext context) {
    OneSignal.shared.init('0827fc3f-cebc-4f23-ab42-2ad161ffd334');
    
    return MaterialApp(
      title: 'iKontest',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        scaffoldBackgroundColor:Color(0xFF15171e),
        primaryColor: Color(0xff15171e),
        backgroundColor:Color(0xFF15171e),
        
        splashColor: Color(0xFF3a4256),
        highlightColor: Color(0xff959eb7),
        primaryColorLight: Color(0xff3a4256),
        primaryColorDark: Color(0xff000000),
      ),
      home: LoginScreen(),
    );
  }
}
