// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

void main(){
  runApp(const MeraApp());
}

class MeraApp extends StatelessWidget {
  const MeraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mera app hai',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const homepage(),
    );
  }
}


class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children:<Widget> [
    
  

      ],
      );
  }
}