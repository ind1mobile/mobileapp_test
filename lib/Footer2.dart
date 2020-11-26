import 'package:flutter/material.dart';

class Footer2 extends StatefulWidget{
  final primaryColor = const Color(0xff2295B7);
  @override
  _Footer2 createState() => _Footer2();
}
class _Footer2 extends State<Footer2> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;

    return Container(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Image.asset('asset/news.jpeg'),
          Container(
            height: 56,
            width: width,
            color: widget.primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.home , color: Colors.white,),
                  onPressed: () {
                    Navigator.of(context).pushNamed("/Home");
                  },
                ),
                IconButton(
                  icon: Icon(Icons.person , color: Colors.white,),
                  onPressed: () {
                    Navigator.of(context).pushNamed("/Mypage");
                  },
                ),
                IconButton(
                  icon: Icon(Icons.search , color: Colors.white,),
                  onPressed: () {
                    Navigator.of(context).pushNamed("/Search");
                  },
                ),
                IconButton(
                  icon: Icon(Icons.favorite , color: Colors.white,),
                  onPressed: () {
                    Navigator.of(context).pushNamed("/DeveloperMenu");
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