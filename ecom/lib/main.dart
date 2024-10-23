import 'package:ecom/HomePage.dart';
import 'package:ecom/Model/Cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(Ecom());
}

class Ecom extends StatelessWidget {
  const Ecom({super.key});

  @override
  Widget build(BuildContext context) {

    // ignore: prefer_const_constructors
    return  ChangeNotifierProvider(
      create: (context)=>Cart(), 
      builder: (context,child)=> MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
      );
    

  }
}