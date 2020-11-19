import 'package:flutter/material.dart';

class Logout extends StatefulWidget {
  @override
  _LogoutState createState() => new _LogoutState();
}

class _LogoutState extends State<Logout> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SC06 ログアウト完了画面"),
      ),
      body: new Center(
        child: new RaisedButton(
          child: const Text('ログイン画面へ戻る'),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed("/");
          },
        ),
      ),
    );
  }
}