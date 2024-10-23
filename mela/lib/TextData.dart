// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TextData extends StatelessWidget {

 final String textData;

 Function(BuildContext?)?deleteD;

   TextData({super.key,required this.textData,required this.deleteD});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:  Slidable(
          endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(onPressed: deleteD,
              icon: Icons.delete,
              backgroundColor: Colors.red,
               ) 
            ],

          ),
        child: Container(
          
           decoration: BoxDecoration(
           color: Colors.amberAccent,
           borderRadius: BorderRadius.circular(10)
          ),
        
             
          child: Padding(padding: EdgeInsets.all(20),
          child: Text(textData),
          ),
        ),
      ),
    );
  }
}