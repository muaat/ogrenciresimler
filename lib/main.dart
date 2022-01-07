import 'package:flutter/material.dart';
import 'package:ogrenciresimler/anasayfa.dart';



void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const anasayfa(),
    },
  ));
}
