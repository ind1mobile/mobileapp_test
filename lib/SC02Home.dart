import 'package:flutter/material.dart';
import 'Footer.dart';
import 'Footer2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'SC03Profile.dart';

class Home extends StatefulWidget {
  @override
  final primaryColor = const Color(0xff2295B7);
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SC02 ホーム画面"),
        backgroundColor: widget.primaryColor,
      ),
      body: _buildBody(context),
      bottomNavigationBar: Footer(),
    );
  }
}


Widget _buildBody(BuildContext context) {
  return StreamBuilder<QuerySnapshot>(
    stream: Firestore.instance.collection('members').snapshots(),
    builder: (context, snapshot) {
      if (!snapshot.hasData) return LinearProgressIndicator();
      return _buildList(context, snapshot.data.documents);
    },
  );
}

Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
  return ListView(
    //scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.only(top: 20.0),
    children: snapshot.map((data) => _buildListItem(context, data)).toList(),
  );
}

Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
  final record = Record.fromSnapshot(data);
  return Padding(
    key: ValueKey(record.fname),
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: new Column(
      children: <Widget>[
        new GestureDetector(
          onTap: () {
            _ev02(context, record.fname, record.lname, record.email, record.desc, record.image,record.fy);
          },
          child:Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: Color(0xff2295B7),width: 5,),
              image: DecorationImage(
                image: AssetImage(record.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(record.fname),
      ],
    ),
  );
}

void _ev02(BuildContext context, String fname,String lname,String email,String desc,String image,String fy) {
  Navigator.push(context, new MaterialPageRoute(builder: (context) =>
  new Profile(fname: fname,lname:lname,email:email,desc:desc,image:image,fy:fy)
  ));
}

class Record {
  final String fname;
  final String lname;
  final String email;
  final String desc;
  final String image;
  final String fy;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['fname'] != null),
        assert(map['lname'] != null),
        fname = map['fname'],
        lname = map['lname'],
        email = map['email'],
        desc = map['desc'],
        image = map['image'],
        fy = map['fy'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

}