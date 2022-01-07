import 'package:flutter/material.dart';
class B9 extends StatelessWidget {

  B9(this.liste);

  final List<String> liste;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: liste.length,itemBuilder:( BuildContext numara,int index ){
        return Image.asset("resimler/9-B/"+liste[index]+".JPG");
      }
      ),
    );

  }
}