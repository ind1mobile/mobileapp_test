import 'package:flutter/material.dart';
import 'Footer.dart';

class Home extends StatefulWidget {
  @override
  final primaryColor = const Color(0xff2295B7);
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SC02 ホーム画面"),
        backgroundColor: widget.primaryColor,
      ),
      body: new Center(
        child: new RaisedButton(
          child: const Text('Ev02'),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed("/Profile");
          },
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}