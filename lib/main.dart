import 'package:flutter/material.dart';
import 'Splash.dart';
import 'SC00DeveloperMenu.dart';
import 'SC01Login.dart';
import 'SC02Home.dart';
import 'SC03Profile.dart';
import 'SC04Search.dart';
import 'SC05Mypage.dart';
import 'SC06Logout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation with Routes',
      routes: <String, WidgetBuilder>{
        '/': (_) => new Splash(),
        '/DeveloperMenu': (_) => new DeveloperMenu(),
        '/Login': (_) => new Login(),
        '/Home': (_) => new Home(),
        '/Profile': (_) => new Profile(),
        '/Search': (_) => new Search(),
        '/Mypage': (_) => new Mypage(),
        '/Logout': (_) => new Logout(),
      },
    );
  }
}
