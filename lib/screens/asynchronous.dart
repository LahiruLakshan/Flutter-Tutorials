import 'package:flutter/material.dart';
import 'home_page.dart';

class NetworkRequestState extends StatefulWidget {

  @override
  _NetworkRequestStateState createState() => _NetworkRequestStateState();
}

class _NetworkRequestStateState extends State<NetworkRequestState> {

  Future<String> getData() async{
    String email = await Future.delayed(Duration(seconds: 3), (){
      return "lahiru@gmail.com";
    });

    return email;

  }

  Future<void> getNetworkRequest() async {
    print( await getData());
  }

  @override
  void initState(){
    super.initState();
    getNetworkRequest();
    print("other code");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Tutorial"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
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
              "Asynchronous",
              style: TextStyle(fontSize: 25.0),
            ),
          ],
        ),
      ),
    );
  }

}