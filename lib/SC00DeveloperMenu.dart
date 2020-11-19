import 'package:flutter/material.dart';

class DeveloperMenu extends StatefulWidget {
  @override
  _DeveloperMenuState createState() => new _DeveloperMenuState();
}

class _DeveloperMenuState extends State<DeveloperMenu> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SC00 開発者メニュー"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new RaisedButton(
              child: const Text('SC01'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/Login");
              },
            ),
            new RaisedButton(
              child: const Text('SC02'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/Home");
              },
            ),
            new RaisedButton(
              child: const Text('SC03'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/Profile");
              },
            ),
            new RaisedButton(
              child: const Text('SC04'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/Search");
              },
            ),
            new RaisedButton(
              child: const Text('SC05'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/Mypage");
              },
            ),
            new RaisedButton(
              child: const Text('SC06'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/Logout");
              },
            ),
          ]
        ),
      ),
    );
  }
}
