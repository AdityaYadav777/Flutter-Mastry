// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mela/HomePage.dart';


void main(){
  runApp(Test());
}
class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}