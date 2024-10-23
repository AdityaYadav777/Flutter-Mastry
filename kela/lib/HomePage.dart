
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(



           width: 200,
           height: 200,
       
           padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
           
      
           
           
           decoration: BoxDecoration(
    color: Colors.green,
    borderRadius: BorderRadius.circular(20)
           ),
           child: const Column(
            children: [
                   Icon(Icons.home),
                   Text("Aditya Yadav",style: TextStyle(
                    fontSize: 30

                   ),)
            ]
           ),

           
           
          
        

          ),

      ),
      
    );
  }
}