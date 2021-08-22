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
        title: Text("Future API"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Network Request",
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
              child: Text("Send Network Request"),
            ),
          ],
        ),
      ),
    );
  }
}
