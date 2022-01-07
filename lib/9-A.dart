import 'package:flutter/material.dart';
class A9 extends StatelessWidget {

  A9(this.liste);

  final List<String> liste;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView.builder(itemCount: liste.length,itemBuilder:( BuildContext numara,int index ){
      return Image.asset("resimler/9-A/"+liste[index]+".JPG");
    }
    ),
    );

  }
}
