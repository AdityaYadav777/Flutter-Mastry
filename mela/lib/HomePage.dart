// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mela/TextData.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list=[
    ["Male"],
    ["Kale"],
    ["LOP"]
  ];

void deleteFun(){
print('deleted');
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Aditya'),
      ),

   body: ListView.builder(
    itemCount: list.length,
    itemBuilder: (context,index){
     
     return TextData(
      textData: list[index].toString(),
      deleteD:(p0) => deleteFun(),

     );

   }),

    );
  }
}