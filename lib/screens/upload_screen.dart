import 'package:flutter/material.dart';

class UploadScr extends StatefulWidget {
  @override
  _UploadScrState createState() => _UploadScrState();
}

class _UploadScrState extends State<UploadScr> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            Container(
              height: 800,
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
              child: ListView(
                padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                children: <Widget>[
                  Text(
                    "Upload Image",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Icon(Icons.add_a_photo, size: 80)),
                  FloatingActionButton.extended(
                    backgroundColor: Color(0xffff471a),
                    onPressed: null,
                    label: Text(
                      "Upload",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    foregroundColor: Colors.white,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}