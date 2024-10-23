// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottonNavBar extends StatelessWidget {

void Function(int)? onTabChang;

   MyBottonNavBar({super.key,required this.onTabChang});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        padding: EdgeInsets.all(35),
        color: Colors.grey,
        activeColor: Colors.black,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 15,
        onTabChange: (value) => onTabChang!(value) ,
        tabs: 
      // ignore: prefer_const_literals_to_create_immutables
      [
        GButton(icon: 
        Icons.home,
        text: 'Home',
        ),
        
      

        GButton(
          icon: Icons.shopping_bag,
          text: 'Cart',
          ),

      ]
      ),
    );
  }
}