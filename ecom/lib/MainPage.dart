// ignore_for_file: prefer_const_constructors

import 'package:ecom/Componets/CartPage.dart';
import 'package:ecom/Componets/ShopPage.dart';
import 'package:ecom/Componets/_bottom_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
 MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
int _selected=0;

void navigateBottomBar(int intdex){
setState(() {
  
  _selected=intdex;

});
}


final List<Widget>  pages=[

ShopPage(),
CartPage()

];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        leading:Builder(builder: (context)=>
        IconButton(
          onPressed: (){
            Scaffold.of(context).openDrawer();
          },
           icon: Icon(Icons.menu)
           
            ) 
        )

      ),
      drawer: Drawer(
       backgroundColor: Colors.white,
        child: Column(

         
         
          // ignore: prefer_const_literals_to_create_immutables
          children: [
              
              
              DrawerHeader(
                
                child: 
              Image(image: NetworkImage(
              "https://res.cloudinary.com/dmubfrefi/image/private/s--XPYRQrV7--/c_crop,h_2813,w_5000,x_0,y_0/c_scale,w_3840/f_auto/q_auto/v1/dee-about-cms-prod-medias/cf68f541-fc92-4373-91cb-086ae0fe2f88/001-nike-logos-swoosh-black.jpg?_a=BAAAV6Bs"
                
              ),
              colorBlendMode: BlendMode.multiply,
              )
              ),


              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),

              ),

              
              ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text('Cart'),
              ),


              

              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),

           

          ],

          
        ),
      ),
    
          bottomNavigationBar: MyBottonNavBar(
            onTabChang: (index) => navigateBottomBar(index),
          ),
        
        body: pages[_selected],



    );
  }
}