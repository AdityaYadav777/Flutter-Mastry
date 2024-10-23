// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Kela"),
      
        
      ),
         


         bottomNavigationBar:  BottomNavigationBar(
          backgroundColor: Colors.blueAccent,
          items: [

            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label:  "Home"
              )   ,   
                  BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label:  "Home"
              )   ,  

                  BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label:  "Home"
              )   ,  

                  BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label:  "Home"
              )   ,  
            ],
         ),

    );
    
  }
}