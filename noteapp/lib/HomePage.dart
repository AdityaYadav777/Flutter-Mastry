// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:noteapp/Utilities/DialogBoax.dart';
import 'package:noteapp/Utilities/todo_tile.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

final _controller=TextEditingController();
void saveNewTask(){
  setState(() {
    
    todoList.add([_controller.text,false]);
    _controller.clear();
    

  });
  Navigator.of(context).pop();
}

List todoList=[

];

void checkBoxChange(bool? value,int index){
setState(() {
  todoList[index][1]=!todoList[index][1];
});
}  

void createNewTask(){
  showDialog(
      context: context,
      builder: (context){
      return  DialogBox(
        controller: _controller,
        onCancle:()=>Navigator.of(context).pop() ,
        onSave: saveNewTask,
      );
  
     
     }
     );
}


void deleteData(int index){

setState(() {
  todoList.removeAt(index);
});

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent[210],
      appBar: AppBar(
        backgroundColor: 
        Colors.yellowAccent,
        title: Text(
          'Note App',
        )
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            DrawerHeader(child: Icon(Icons.person_3,size: 100,)),

            ListTile(leading: Icon(Icons.settings),
            title: Text('Setting'),),

              
            ListTile(leading: Icon(Icons.share),
            title: Text('Share'),),

              
            ListTile(leading: Icon(Icons.account_balance),
            title: Text('Account'),),


          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        
         backgroundColor: Colors.yellow,
        onPressed:createNewTask,
        child: Text('+',
        style: TextStyle(fontSize: 30),
        ),
        ),



        body: ListView.builder(
         itemCount: todoList.length,
         itemBuilder:(context, index) {

          return ToDoTile(
             
              taskName: todoList[index][0],
              taskCompleted: todoList[index][1],
              onChanged: (p0) =>checkBoxChange(p0,index),
              deleteFun: (p0) => deleteData(index),
              
              );
         },
        )
  
    );
  }
}