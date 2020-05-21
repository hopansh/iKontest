import 'package:flutter/material.dart';
import 'package:ikontest/screens/home_screen.dart';
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
        scaffoldBackgroundColor: Color(0xFFf2f2f2),
        primaryColor: Color(0xff80b1b3),
        backgroundColor: Color(0xFFffffff),
        splashColor: Color(0xFFcfe2e2),
        highlightColor: Color(0xffcfe2e2),
        
      ),
      home: HomeScreen(),
    );
  }
}
