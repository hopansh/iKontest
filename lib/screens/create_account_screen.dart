import 'package:flutter/material.dart';
import 'dart:async';

class CreateAccountScreen extends StatefulWidget {
  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  String username;
  String number;

  submit() {
    final form = _formKey.currentState;

    if (form.validate()) {
      form.save();
      SnackBar snackbar = SnackBar(content: Text("Welcome $username!"));
      _scaffoldKey.currentState.showSnackBar(snackbar);
      Timer(Duration(seconds: 1), () {
        Navigator.pop(context, {'username':username,'phoneNumber':number});
      });
    }
  }

  @override
  Widget build(BuildContext parentContext) {
    return Scaffold(
      key: _scaffoldKey,
      
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Form(
            key: _formKey,
            autovalidate: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Center(
                    child: Text(
                      "Create a username",
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16,16,16,0),
                  child: TextFormField(
                          validator: (val) {
                            if (val.trim().length < 3 || val.isEmpty) {
                              return "Username too short";
                            } else if (val.trim().length > 12) {
                              return "Username too long";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (val) => username = val,
                          decoration: InputDecoration(
                             fillColor: Colors.white,
                            focusColor: Color(0xff3a4256),
                            border: OutlineInputBorder(),
                            labelText: "Username",
                            labelStyle: TextStyle(fontSize: 15.0,color: Color(0xff15171e)),
                            hintText: "Must be at least 3 characters",
                          ),
                        ),
                ),
                      Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Center(
                    child: Text(
                      "Enter your number",
                      style: TextStyle(fontSize: 25.0,color: Color(0xff15171e)),
                    ),
                  ),
                ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          
                          keyboardType: TextInputType.number,
                          validator: (val) {
                            if (val.trim().length !=10 ) {
                              return "Enter Valid Number";
                            } else if (val.isEmpty) {
                              return "Enter a number";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (val) => number = val,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            focusColor: Color(0xff3a4256),
                            border: OutlineInputBorder(),
                            labelText: "Phone Number",
                            labelStyle: TextStyle(fontSize: 15.0),
                            
                          ),
                        ),
                      ),
                    
                GestureDetector(
                  onTap: submit,
                  child: Container(
                    height: 50.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    child: Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            color: Color(0xff15171e),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}