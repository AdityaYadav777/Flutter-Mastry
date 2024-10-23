// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newapp/BottomNaviagtion/Home.dart';
import 'package:newapp/BottomNaviagtion/Profile.dart';
import 'package:newapp/BottomNaviagtion/Setting.dart';

class BottomNav extends StatefulWidget {
   BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
 int _selected=0;

  List list =[
   Home(),
   Setting(),
   Profile()
  ];

  void changeBar(int index){
   
   setState(() {
      _selected=index;
   });
      
  
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Radha"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: 
            Icon(Icons.person,size: 100,)),

            ListTile(
              leading: Icon(Icons.settings),
            )
          ],
        ),
      ),
      body: list[_selected],

      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected,
        onTap: changeBar,
        elevation: 34,
        items: [

                BottomNavigationBarItem(icon: Icon(Icons.home),label: "hii"),
        
                BottomNavigationBarItem(icon: Icon(Icons.settings),label: "hii"),

                BottomNavigationBarItem(icon: Icon(Icons.person),label: "hii"),


      ],),
   
    );
  }
}