import 'package:flutter/material.dart';

class Mypage extends StatefulWidget {
  @override
  _MypageState createState() => new _MypageState();
}

class _MypageState extends State<Mypage> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SC05 マイページ画面"),
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