import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class kart extends StatelessWidget {


  kart(this.yazi);
  final yazi;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(children: [Text(yazi,style: TextStyle(color: Colors.black54 , fontSize: 26, ),)],),
      ),
    );
  }
}
