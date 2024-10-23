// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:noteapp/Utilities/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancle;

 DialogBox({super.key,
 required this.controller,
 required this.onCancle,
 required this.onSave});
 
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content:Container(
        height: 130,
        child: Column(
          children: [

            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder(),
              hintText: "Add A New Task"),
            ),

Padding(
  
  padding: EdgeInsets.all(10),
  child: Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      children: [
       
        MyButtons(
           text: "Save",
           onPressed:onSave
           )  ,
Spacer(),
           MyButtons(
            text: "Cancle",
             onPressed: onCancle
             )

  
    
    
      ],
    ),
  ),
)
          ],
        ), 

      ),
    );
  }
}