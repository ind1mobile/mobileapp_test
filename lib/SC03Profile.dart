import 'package:flutter/material.dart';
import 'Footer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
      /*body: new Center(
        child: new RaisedButton(
          child: const Text('開発者メニューへ'),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed("/DeveloperMenu");
          },
        ),
      ),
      */
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
    padding: const EdgeInsets.only(top: 20.0),
    children: snapshot.map((data) => _buildListItem(context, data)).toList(),
  );
}

Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
  final record = Record.fromSnapshot(data);

  return Padding(
    key: ValueKey(record.fname),
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: ListTile(
        title: Text(record.fname),
        trailing: Text(record.lname),
      ),
    ),
  );
}

class Record {
  final String fname;
  final String lname;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['fname'] != null),
        assert(map['lname'] != null),
        fname = map['fname'],
        lname = map['lname'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

}