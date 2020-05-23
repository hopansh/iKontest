import 'package:flutter/material.dart';
import 'package:ikontest/screens/about_screen.dart';
import 'package:ikontest/screens/contests_screen.dart';
import 'package:ikontest/screens/faq_screen.dart';
import 'package:ikontest/screens/homeBody_screen.dart';
import 'package:ikontest/screens/invite_screen.dart';
import 'package:ikontest/screens/mediaRequest_screen.dart';
import 'package:ikontest/screens/saved_screen.dart';
import 'package:ikontest/screens/settings_screen.dart';
import 'package:ikontest/screens/wallpaper_screen.dart';


class BodyFunction extends StatelessWidget {
final String _option;
BodyFunction(this._option);
  @override
  Widget build(BuildContext context) {
    if (_option == "About")
      return About();
      else if(_option=="Wallpapers")
      return Wallpapers();
    else if (_option == "Contests")
      return Contests();
    else if (_option == "Saved")
      return Saved();
    else if (_option == "Media Request")
      return MediaReq();
    else if (_option == "Invite Friends")
      return Invite();
    else if (_option == "Settings") 
      return Settings();
    else if (_option=="FAQ")
    return FAQ();
    else return Home();
  }
}