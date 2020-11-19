import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SC02 ホーム画面"),
      ),
      body: new Center(
        child: new RaisedButton(
          child: const Text('Ev02'),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed("/Profile");
          },
        ),
      ),
    );
  }
}