import 'package:flutter/material.dart';

class TestDrawer extends StatelessWidget {
  const TestDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("KELA"),
       ),

       drawer: Drawer(
        
        backgroundColor: Colors.amberAccent,
        child: Column(children: [
          
          DrawerHeader(child: Icon(Icons.person_2,size: 100)),

          ListTile(
            leading: Icon(Icons.home),
            title: Text("hii"),
            onTap: (){
              Navigator.pushNamed(context, '/Home');
            },
          ),
           ListTile(
            leading: Icon(Icons.wrong_location_rounded),
            title: Text("hii"),
          )


        ],),

       ),
    );
  }
}