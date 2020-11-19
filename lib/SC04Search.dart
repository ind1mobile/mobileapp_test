import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => new _SearchState();
}

class _SearchState extends State<Search> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SC04 検索画面"),
      ),
      body: new Center(
        child: new RaisedButton(
          child: const Text('開発者メニューへ'),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed("/DeveloperMenu");
          },
        ),
      ),
    );
  }
}