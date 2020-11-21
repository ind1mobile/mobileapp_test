import 'package:flutter/material.dart';

class SearchList extends StatefulWidget{
 const SearchList();

 @override
 _SearchList createState() => _SearchList();
}
class _SearchList extends State<SearchList> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;

    return Container(
      height: 56,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.2),
      ),
      child: Row( // 1行目
        children: <Widget>[
          Container(color: Colors.white, width: 21,),
          new Icon(Icons.watch_later),
          Container(color: Colors.white, width: 21,),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Ryuta Hoshino',
              style: TextStyle(fontSize: 16.0, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}