import 'package:flutter/material.dart';

class HomePage4 extends StatelessWidget {
  const HomePage4({super.key});

void userTap(){
  print("Just TAP");
}

void LogPress(){
            print("Long PRESSS");
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child:    GestureDetector(
          onTap: (){
           userTap();
          },

          onLongPress: (){
           LogPress();
          },

          child: Container(
           height: 200,
           width: 200,
           color:Colors.blue,
           child: Center(child: Icon(Icons.tap_and_play))
           
                ),
        ),
      )
    
    );
  }
}