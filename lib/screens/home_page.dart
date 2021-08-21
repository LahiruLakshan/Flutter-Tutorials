import 'package:flutter/material.dart';
import 'asynchronous.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void increment() {
    setState(() {
      count = count + 1;
      print(count);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Tutorial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flutter home screen",
              style: TextStyle(fontSize: 25.0),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_){
                      return NetworkRequestState();
                    }));

                // Navigator.of(context).pushNamed('/second');
              },
              child: Icon(Icons.arrow_forward_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
