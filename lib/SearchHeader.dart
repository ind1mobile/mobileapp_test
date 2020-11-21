import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class SearchHeader extends StatefulWidget{
 const SearchHeader();

 @override
 _SearchHeader createState() => _SearchHeader();
}
class _SearchHeader extends State<SearchHeader> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    final primaryColor = const Color(0xff2295B7);

    return Container(
      height: 48,
      width: width,
      color: Color(0xffe8e8e8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back , color: Colors.black54,),
                  onPressed: () {
                    Navigator.of(context).pushNamed("/Home");
                  },
                ),
                Container(width: 16),
                Text(
                  "名前,メールアドレスを入力して検索",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.search , color: Colors.black54,),
                  onPressed: () {
                    Navigator.of(context).pushNamed("/Search");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}