import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Tutorial",
      home: HomePage(),

    );
  }
}

