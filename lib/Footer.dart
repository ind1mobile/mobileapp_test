import 'package:flutter/material.dart';

class Footer extends StatefulWidget{
  final primaryColor = const Color(0xff2295B7);
  @override
  _Footer createState() => _Footer();
}
class _Footer extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;

    return Container(
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
    );
  }
}