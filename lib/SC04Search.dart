import 'package:flutter/material.dart';
import 'Footer.dart';
import 'SearchHeader.dart';
import 'SearchList.dart';

class Search extends StatefulWidget {
  @override
  final primaryColor = const Color(0xff2295B7);
  _SearchState createState() => new _SearchState();
}

class _SearchState extends State<Search> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:CustomScrollView(
        slivers: <Widget>[
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              child: new Column(
                children: <Widget>[
                  SearchHeader(),
                  SearchList(),
                  SearchList(),
                  SearchList(),
                  SearchList(),
                  SearchList(),
                  SearchList(),
                  SearchList(),
                  SearchList(),
                ],
              ),
            );
          },childCount: 1)),
        ],
      ),),
      bottomNavigationBar: Footer(),
    );
  }
}