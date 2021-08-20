import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      // Add the locale here
      builder: DevicePreview.appBuilder,
      // Add the builder here
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.pink,
        brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text("Flutter"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        flexibleSpace: Image.asset(
          "assets/codex.png",
          fit: BoxFit.cover,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.deepPurpleAccent,
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Text(
        //       "Text 01",
        //       style: TextStyle(fontSize: 30, color: Colors.blue),
        //     ),
        //     Text(
        //       "Text 02",
        //       style: TextStyle(fontSize: 30, color: Colors.red),
        //     ),
        //     Text(
        //       "Text 03",
        //       style: TextStyle(fontSize: 30, color: Colors.green),
        //     ),
        //   ],
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Text 01",
              style: TextStyle(fontSize: 20, color: Colors.blue, backgroundColor: Colors.white),
            ),
            Text(
              "Text 02",
              style: TextStyle(fontSize: 20, color: Colors.red, backgroundColor: Colors.white),
            ),
            Text(
              "Text 03",
              style: TextStyle(fontSize: 20, color: Colors.green, backgroundColor: Colors.white),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Text 04",
                  style: TextStyle(fontSize: 20, color: Colors.yellow, backgroundColor: Color.fromRGBO(
                      255, 0, 169, 1.0)),
                ),
                Text(
                  "Text 05",
                  style: TextStyle(fontSize: 20, color: Colors.purple, backgroundColor: Color.fromRGBO(
                      87, 255, 0, 1.0)),
                ),
                Text(
                  "Text 06",
                  style: TextStyle(fontSize: 20, color: Colors.deepOrange, backgroundColor: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
