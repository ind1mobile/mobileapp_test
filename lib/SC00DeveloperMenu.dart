import 'package:flutter/material.dart';
import 'Footer.dart';

class DeveloperMenu extends StatefulWidget {
  @override
  final primaryColor = const Color(0xff2295B7);
  _DeveloperMenuState createState() => new _DeveloperMenuState();
}

class _DeveloperMenuState extends State<DeveloperMenu> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SC00 開発者メニュー"),
        backgroundColor: widget.primaryColor,
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new RaisedButton(
              child: const Text('SC01 ログイン画面'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/Login");
              },
            ),
            new RaisedButton(
              child: const Text('SC02 ホーム画面'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/Home");
              },
            ),
            new RaisedButton(
              child: const Text('SC03 プロフィール照会画面'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/Profile");
              },
            ),
            new RaisedButton(
              child: const Text('SC04 検索画面'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/Search");
              },
            ),
            new RaisedButton(
              child: const Text('SC05 マイページ画面'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/Mypage");
              },
            ),
            new RaisedButton(
              child: const Text('SC06 ログアウト完了画面'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/Logout");
              },
            ),
          ]
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
