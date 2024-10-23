// ignore_for_file: prefer_const_constructors

import 'package:ecom/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
      ),

    body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
       
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            
           Image(
            image:
             NetworkImage(
              "https://res.cloudinary.com/dmubfrefi/image/private/s--XPYRQrV7--/c_crop,h_2813,w_5000,x_0,y_0/c_scale,w_3840/f_auto/q_auto/v1/dee-about-cms-prod-medias/cf68f541-fc92-4373-91cb-086ae0fe2f88/001-nike-logos-swoosh-black.jpg?_a=BAAAV6Bs"
              ,
               
              ),
              
              width: 350,
              height: 270,
              ),
              Text(
                'Just Do it',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                ),
                ),
        
               
             SizedBox(height: 30,),
        
                Text(
                  "Brand New Sneakers and Custom kiks made with premium Quality",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                  ),
                  textAlign: TextAlign.center,
                ),

                  SizedBox(height: 30,),


                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> MainPage(),)),
                  child: Container(
                    decoration: BoxDecoration(
                      color:Colors.black,
                      borderRadius: BorderRadius.circular(10)
                  
                    ),
                  
                    padding: EdgeInsets.all(20),
                  
                    child: Center(child: Text("Shop Now",style: TextStyle(color:Colors.white),)),
                  ),
                )
 
          ],
        ),
      ),
    ),
    );
  }
}