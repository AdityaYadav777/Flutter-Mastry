

import 'package:flutter/material.dart';
import 'package:newapp/BottomNaviagtion/bottomNav.dart';

void main(){

runApp( Kela());

}


class Kela extends StatelessWidget {
  const Kela({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
       home: BottomNav()
      
    );
  }
}