import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        // enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, // Add the builder here
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {  },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {  },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {  },
          ),
        ],
        flexibleSpace: Icon(
          Icons.photo_camera,
          size: 75.0,
          color: Colors.white70,
        ),
      ),
    );
  }
}
