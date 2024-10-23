import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home2Page extends StatelessWidget {
  const Home2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title:const  Text('Hello Aditya'),
      ),

      body: Column(
      
        children: [
        
         Expanded(child:  
        Container(

         
           height: 100,
           color: Colors.blue,
        ),
         ),

       
Expanded(
  flex: 4,
  child: 
 
        Container(
          
          height: 100,
          color: Colors.blue[200],
        ),
),

Expanded(child: 
        Container(
        
          height: 100,
          color: Colors.blue[300],
        ),
        ),


         
        

        ],
      ),

    );
  }
}