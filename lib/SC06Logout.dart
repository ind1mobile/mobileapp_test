import 'package:flutter/material.dart';

class Logout extends StatefulWidget {
  @override
  _LogoutState createState() => new _LogoutState();
  final primaryColor = const Color(0xff2295B7);
}

class _LogoutState extends State<Logout> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SC06 ログアウト完了画面"),
        backgroundColor: widget.primaryColor,
      ),
      body: new Center(
        child: new RaisedButton(
          child: const Text('ログイン画面へ戻る'),
          color: widget.primaryColor,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed("/");
          },
        ),
      ),
    );
  }
}