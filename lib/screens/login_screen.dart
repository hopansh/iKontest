import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../screens/create_account_screen.dart';
import '../models/user.dart';
import '../screens/home_screen.dart';


final GoogleSignIn _googleSignIn=GoogleSignIn();
final CollectionReference usersRef=Firestore.instance.collection('users');
final DateTime timestamp=DateTime.now();
User currentUser;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {  

  
  bool isAuth=false;

  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((account) {
      handleSignIn(account);
     },onError: (err){
       print('Error signing in : $err');
     });
     _googleSignIn.signInSilently(suppressErrors: false).then((account){
      handleSignIn(account);
       }).catchError((err){
       print('Error signing in silently: $err');
     });
  }

  void handleSignIn(GoogleSignInAccount account){
      if(account!=null){
        createUserInFirestore();
        setState(() {
          isAuth=true;
        });
      }
      else{
        setState(() {
          isAuth=false;
        });
      }
  }
  void login(){
    _googleSignIn.signIn();
  }
  void logout(){
    _googleSignIn.signOut();
  }
  
  void createUserInFirestore() async{
    final GoogleSignInAccount user=_googleSignIn.currentUser;
    DocumentSnapshot doc=await usersRef.document(user.id).get();
    if(!doc.exists){
      final userInfo=await Navigator.of(context).push(
        MaterialPageRoute(builder: (context){
          return CreateAccountScreen();
        })
      );
      usersRef.document(user.id).setData({
        "id":user.id,
        "username":userInfo['username'],
        "photoUrl":user.photoUrl,
        "email":user.email,
        "displayname":user.displayName,
        "timestamp":timestamp,
        "phoneNumber":userInfo['phoneNumber'],
      });
      doc=await usersRef.document(user.id).get();
    }
    currentUser=User.fromDocument(doc); 
  }

  Scaffold handleAuthScreen(){

    
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: logout,
                child: Text("Logout"),
                
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder:(context){
                      return HomeScreen();
                    })
                  );
                },
                child: Text("HomePage"),
                
              ),
              
            ],
          ),
        ),
      );
  }
  Scaffold handleUnAuthScreen(){
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: login,
          child: Text("GoogleSignIn"),
        ),
      ),
      
    );
  }

  @override
  Widget build(BuildContext context) {

    return isAuth?handleAuthScreen():handleUnAuthScreen();
  }
}