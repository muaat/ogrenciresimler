import 'package:flutter/material.dart';
class D12 extends StatelessWidget {

  D12(this.liste);

  final List<String> liste;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: liste.length,itemBuilder:( BuildContext numara,int index ){
        return Image.asset("resimler/12-D/"+liste[index]+".JPG");
      }
      ),
    );

  }
}