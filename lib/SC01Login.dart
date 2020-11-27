import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  final primaryColor = const Color(0xff2295B7);
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SC01 ログイン画面"),
        backgroundColor: widget.primaryColor,
      ),
      body: new Center(
        child: new Form(
          child: new SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 24.0),
                new TextFormField(
                  decoration: const InputDecoration(
                    border: const UnderlineInputBorder(),
                    labelText: 'User Id',
                  ),
                ),
                const SizedBox(height: 24.0),
                new TextFormField(
                  maxLength: 8,
                  decoration: new InputDecoration(
                    border: const UnderlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(height: 24.0),
                new Center(
                  child: new RaisedButton(
                    child: const Text('Login'),
                    color: widget.primaryColor,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {
                      // TODO: ログイン処理
                      // ホーム画面へ
                      Navigator.of(context).pushReplacementNamed("/Home");
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
