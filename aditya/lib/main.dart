

import 'package:flutter/material.dart';


void main(){
  runApp(myApp());
}
// ignore: camel_case_types
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
    home: Home()
    );
  }
}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
    appBar: AppBar(
      title: const Text('Home'),
    ),

  floatingActionButton: FloatingActionButton(onPressed: (){},child: Text('+'),),


    body: const Column(
      children: [
        Text('hello'),
      ],
    ),
    );
    
  }
}