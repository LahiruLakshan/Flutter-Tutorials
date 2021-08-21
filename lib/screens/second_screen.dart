import 'package:flutter/material.dart';
import 'home_page.dart';

class SecondScreen extends StatelessWidget {
  late String text;

  SecondScreen(String text) {
    this.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Tutorial"),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context, HomePage());
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 25.0),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     Navigator.of(context).push(MaterialPageRoute(
      //         builder: (_){
      //           return SecondScreen();
      //         }));
      //   },
      //   tooltip: "Increment",
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
