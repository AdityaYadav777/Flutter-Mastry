import 'package:flutter/material.dart';
import 'package:kela/Navigations/Screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),

      ),
    body: Center(
      child: ElevatedButton(
        child: Text("Goto second Screen"),
        onPressed: (){

        Navigator.pushNamed(context, '/Screen2');
        

        },
      ),
    ),
    );
  }
}