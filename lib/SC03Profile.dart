import 'package:flutter/material.dart';
import 'Footer.dart';

class Profile extends StatefulWidget {
  @override
  final primaryColor = const Color(0xff2295B7);
  _ProfileState createState() => new _ProfileState();
}

class _ProfileState extends State<Profile> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SC03 プロフィール照会画面"),
        backgroundColor: widget.primaryColor,
      ),
      body: new Center(
        child: new RaisedButton(
          child: const Text('開発者メニューへ'),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed("/DeveloperMenu");
          },
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}