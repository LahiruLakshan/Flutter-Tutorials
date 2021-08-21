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
  TextEditingController title = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.all(1),
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                onPressed: (){
                  title.text = "";
                },
              ),
              filled: true,
              hintText: "Search...",
              hintStyle: TextStyle(color: Colors.white70),
              border: InputBorder.none,
            ),
            // onChanged: (text){
            //   print(text);
            // },
            // onSubmitted: (text){
            //   print(text);
            // },
            controller: title,
            keyboardType: TextInputType.text,
            style: TextStyle(fontSize: 22),
          ),
        ),
        // bottom: PreferredSize(
        //     child: Container(
        //       color: Colors.orange,
        //       height: 4.0,
        //     ),
        //     preferredSize: Size.fromHeight(20.0),
        // ),
        flexibleSpace: Image.asset(
          "assets/codex.png",
          fit: BoxFit.cover,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.deepPurpleAccent,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(prefixIcon: Icon(Icons.search)),
                maxLength: 8,
                // onChanged: (text){
                //   print(text);
                // },
                // onSubmitted: (text){
                //   print(text);
                // },
                controller: title,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                maxLength: 8,
                autofocus: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
