// ignore_for_file: prefer_const_constructors

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kela/BottomNavigation/BottomBar.dart';
import 'package:kela/Drawer/Home.dart';
import 'package:kela/Drawer/TestDrawer.dart';
import 'package:kela/HomePage4.dart';
import 'package:kela/Navigations/Screen1.dart';
import 'package:kela/Navigations/Screen2.dart';



void main(){
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

        routes: {

    '/Screen2':(context) =>Screen2(),
    '/Home':(context) => Home(),
    
        },
     
      home: BottomBar(),
    
   
         );
  }
}