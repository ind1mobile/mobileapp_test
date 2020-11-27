import 'package:flutter/material.dart';
import 'Footer.dart';

class Mypage extends StatefulWidget {
  @override
  _MypageState createState() => new _MypageState();
}

class _MypageState extends State<Mypage> {
  // This widget is the root of your application.
  @override
  final primaryColor = const Color(0xff2295B7);
  final String fname='Ryuta';
  final String lname='Hoshino';
  final String email='Ryuta.Hoshino@ind1.com';
  final String desc='テストテストテストテスト';
  final String image='asset/hoshino.jpeg';

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SC05 マイページ画面"),
        backgroundColor: primaryColor,
      ),
      body: new SafeArea(
        child: new Column(
          children: <Widget>[
            Container(height: 20,),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(color: Color(0xff2295B7),width: 5,),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(height: 20,),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(width: 30,),
                Container(
                  width: 100,
                  child : Text('F-Name',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey,width: 1,),
                  ),
                  width: 200,
                  child: Text('$fname',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Icon(Icons.edit , color: Colors.grey,),
              ],
            ),
            Container(height: 20,),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(width: 30,),
                Container(
                  width: 100,
                  child : Text('L-Name',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey,width: 1,),
                  ),
                  width: 200,
                  child: Text('$lname',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Icon(Icons.edit , color: Colors.grey,),
              ],
            ),
            Container(height: 20,),
            Row(
              children: <Widget>[
                Container(width: 30,),
                Container(
                  width: 100,
                  child : Text('email',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey,width: 1,),
                  ),
                  width: 200,
                  child:Text('$email',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Icon(Icons.edit , color: Colors.grey,),
              ],
            ),
            Container(height: 20,),
            Row(
              children: <Widget>[
                Container(width: 30,),
                Container(
                  width: 100,
                  child : Text('desc',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey,width: 1,),
                  ),
                  width: 200,
                    child:Text('$desc',
                        style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                Icon(Icons.edit , color: Colors.grey,),
              ],
            ),
            Container(height: 40,),
            RaisedButton(
              child: const Text('Save'),
              color: primaryColor,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/Home");
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}