import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() =>
    runApp(
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

  var items = List<String>.generate(100, (index) => "Item Number $index");
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
        // child: ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     Text(
        //       "Text 01",
        //       style: Theme.of(context).textTheme.display1,
        //     ),
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.deepOrange,
        //     ),
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.yellow,
        //     ),
        //   ],
        // ),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },

        ),
      ),
    );
  }
}
