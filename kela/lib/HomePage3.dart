import 'package:flutter/material.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: 
    
    GridView.builder(
         itemCount: 64,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8), 
      itemBuilder: (context,index)=>
      
      Container(
        color: Colors.amber,
        margin: EdgeInsets.all(4),
      )

      )





    // ListView.builder(
    //   itemCount: 64,
    //   itemBuilder: (context,index)=> 
      
    //     ListTile(
    //       title: Text(index.toString()),
    //     )

    //   ),





// ListView(
//         children: [


//           Container(
//            height: 300,
//             color: Colors.black,
//           ),
//  Container(
//            height: 300,
//             color: Colors.blueGrey,
//           ),
//            Container(
//            height: 300,
//             color: Colors.red,
//           ),

//  Container(
//            height: 200,
//             color: Colors.black,
//           ),



//         ],
//       ),





    );
  }
}