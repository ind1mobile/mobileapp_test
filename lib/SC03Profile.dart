import 'package:flutter/material.dart';
import 'Footer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class Profile extends StatelessWidget {
  final primaryColor = const Color(0xff2295B7);
  final String fname;
  final String lname;
  final String email;
  final String desc;
  final String image;
  const Profile({
    Key key,
    this.fname,
    this.lname,
    this.email,
    this.desc,
    this.image,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SC03 プロフィール照会画面"),
        backgroundColor: primaryColor,
      ),
      body: new Center(
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
            Text('$fname'+' '+'$lname',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.message , color: primaryColor,),
                ),
                IconButton(
                  icon: Icon(Icons.mail_outline , color: primaryColor,),
                ),
                IconButton(
                  icon: Icon(Icons.phone , color: primaryColor,),
                ),
                IconButton(
                  icon: Icon(Icons.info_outline , color: primaryColor,),
                ),
              ],
            ),
            Text('email : '+'$email',
              style: TextStyle(fontSize: 20.0),
            ),
            Container(height: 20,),
            Text('$desc'),
            //_buildBody(context),
          ],
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
