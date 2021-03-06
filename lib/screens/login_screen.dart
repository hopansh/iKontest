import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ikontest/screens/homeBody_screen.dart';
import '../screens/create_account_screen.dart';
import '../models/user.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn();
final CollectionReference usersRef = Firestore.instance.collection('users');
final DateTime timestamp = DateTime.now();
User currentUser;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isAuth = false;

  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((account) {
      handleSignIn(account);
    }, onError: (err) {
      print('Error signing in : $err');
    });
    _googleSignIn.signInSilently(suppressErrors: false).then((account) {
      handleSignIn(account);
    }).catchError((err) {
      print('Error signing in silently: $err');
    });
  }

  void handleSignIn(GoogleSignInAccount account) {
    if (account != null) {
      createUserInFirestore();
      setState(() {
        isAuth = true;
      });
    } else {
      setState(() {
        isAuth = false;
      });
    }
  }

  void login() {
    _googleSignIn.signIn();
  }

  void logout() {
    _googleSignIn.signOut();
  }

  void createUserInFirestore() async {
    final GoogleSignInAccount user = _googleSignIn.currentUser;
    DocumentSnapshot doc = await usersRef.document(user.id).get();
    if (!doc.exists) {
      final userInfo = await Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
        return CreateAccountScreen();
      }));
      usersRef.document(user.id).setData({
        "id": user.id,
        "username": userInfo['username'],
        "photoUrl": user.photoUrl,
        "email": user.email,
        "displayname": user.displayName,
        "timestamp": timestamp,
        "phoneNumber": userInfo['phoneNumber'],
      });
      doc = await usersRef.document(user.id).get();
    }
    currentUser = User.fromDocument(doc);
  }

  handleAuthScreen() {
     return Home(_googleSignIn);
  }

  Scaffold handleUnAuthScreen() {
    return Scaffold(
        backgroundColor: Color(0xFf15171e),
        appBar: AppBar(
          title: Text("Login Page"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(80, 80, 80, 50),
              child: Center(
                child: Image.asset(
                  "assets/images/i.png",
                  height: 80,
                  width: 80,
                ),
              ),
            ), 
        OutlineButton(
      splashColor: Colors.grey,
      onPressed: login,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/images/google_logo.png"), height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
           )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return isAuth ? handleAuthScreen() : handleUnAuthScreen();
    
  }
}
