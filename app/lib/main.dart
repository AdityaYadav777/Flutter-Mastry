import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'stateful',
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: const homepage(),
    );
  }
}

// ignore: camel_case_types
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

// ignore: camel_case_types
class _homepageState extends State<homepage> {
  int a=0;
  String adi="clcik me";
  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget>[
        const Text('hii'),
        // ignore: avoid_unnecessary_containers
        Container( width: 100,height: 100, margin:  const EdgeInsets.only(left: 20,right: 30), color: Colors.amber,    alignment: Alignment.center, child: const Text('byee'),),
        ElevatedButton(
            child:Text('$adi $a'),
          onPressed: (){
       setState(() {
       a++;
      adi="hey";
        });
          }, 
        
           ),
           
      ],
    );
  }
}
