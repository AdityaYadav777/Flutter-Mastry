
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:noteapp/HomePage.dart';

void main(){
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      
    );
  }
}