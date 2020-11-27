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
  final String fy;
  const Profile({
    Key key,
    this.fname,
    this.lname,
    this.email,
    this.desc,
    this.image,
    this.fy,
  }) : super(key: key);


  @override
  final double expandedArea=280;
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SC03 プロフィール照会画面"),
        backgroundColor: primaryColor,
      ),
      body: SafeArea(child:CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            expandedHeight: expandedArea,
            flexibleSpace: Container(
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0),
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
                  Text('$desc'),
                  Container(height: 20,),
                  Divider(),
                ],
              ),
            ),
            bottom: PreferredSize(child: Text(''),preferredSize: Size.fromHeight(326),),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              child: Column(
                children: <Widget>[
                  ExpansionTile(
                    title: Container( // 3.1.1
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Profile",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Container(color: Colors.white, height: 8.6,),
                        ],
                      ),
                    ),
                    children: <Widget>[
                      Container(color: Colors.white, height: 12,),
                      Text('email : ' + '$email',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Container(color: Colors.white, height: 12,),
                    ],
                    initiallyExpanded: false,
                  ),
                  Divider(),
                  ExpansionTile(
                    title: Container( // 3.1.1
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Skills",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Container(color: Colors.white, height: 8.6,),
                        ],
                      ),
                    ),
                    children: <Widget>[
                      Container(color: Colors.white, height: 12,),
                      Text('準備中',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Container(color: Colors.white, height: 12,),
                    ],
                    initiallyExpanded: false,
                  ),
                  Divider(),
                  ExpansionTile(
                    title: Container( // 3.1.1
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("History",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Container(color: Colors.white, height: 8.6,),
                        ],
                      ),
                    ),
                    children: <Widget>[
                      Container(color: Colors.white, height: 12,),
                      Text('準備中',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Container(color: Colors.white, height: 12,),
                    ],
                    initiallyExpanded: false,
                  ),
                ],
              ),
            );
          },childCount: 1),),
        ],
      ),
    ),
    bottomNavigationBar: Footer(),
    );
  }
}
