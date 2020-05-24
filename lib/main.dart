import 'package:flutter/material.dart';
import 'package:ikontest/screens/homeBody_screen.dart';
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
    return Home();
  }
}
