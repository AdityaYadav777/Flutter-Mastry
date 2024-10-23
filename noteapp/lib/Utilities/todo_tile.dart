// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, must_be_immutable

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {

  final String taskName;
  final bool taskCompleted;
  Function(bool?)?onChanged;
  Function(BuildContext)?deleteFun;
  

  ToDoTile(
    {super.key,
   
   required this.taskName, 
   required this.taskCompleted,
   required this.onChanged,
   required this.deleteFun

   }
   );
   

   


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
     
       

        child: Slidable(
          endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(onPressed: deleteFun,
              icon: Icons.delete,
              backgroundColor: Colors.red,
               ) 
            ],

          ),
          child: Container(
            
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                
                Checkbox(activeColor: Colors.black,
                  value: taskCompleted, onChanged: onChanged ),
          
                Text(taskName,
                 style: TextStyle(
                  decoration:
                   taskCompleted?
                   TextDecoration.lineThrough
                   :TextDecoration.none
                  ),
                )            
              ],
            ),
            decoration: BoxDecoration(color: Colors.yellow,
            borderRadius: BorderRadius.circular(12)),
          ),
        ),
      );
    
  }
}