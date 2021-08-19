import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Lahiru"),
        ),
        body: Center(
          child: Text(
            "Welcome to Flutter!",
            style: TextStyle(fontSize: 20, color: HexColor("#8321F3"), backgroundColor: HexColor("#f39f21")),
          ),
        ),
      ),
    );
  }
}
