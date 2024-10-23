

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(Kela());
}

class Kela extends StatelessWidget {
  const Kela({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,

          title: Text('kela'),
          ),

        

floatingActionButton: FloatingActionButton(onPressed: (){},child: Text('+'),),
drawer: NavigationDrawer(children: [

  Column(    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
Icon(Icons.person,size: 200,),
Text('Aditya Yadav')
    ],




  )

],),

bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.blueAccent,
selectedItemColor: Colors.white,
  items: [
  BottomNavigationBarItem( icon:  Icon(Icons.home),label: "home"),
  BottomNavigationBarItem(icon: Icon(Icons.search),label: "search")

],),

body: Column(
mainAxisSize: MainAxisSize.max,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
  
  
  Container(
padding: EdgeInsets.only(left: 30),
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.circular(100),

    ),
  )
],

 
),

          ),
    );
  }
}