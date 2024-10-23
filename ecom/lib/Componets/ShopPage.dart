// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:ecom/Componets/_shoeTile_.dart';
import 'package:ecom/Model/Cart.dart';
import 'package:ecom/Model/shoe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
 ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
void addShoeToCart(Shoe shoe){
Provider.of<Cart>(context,listen: false).addItemToCart(shoe);
showDialog(context: context, builder: (context)=>AlertDialog(
  title: Text("Added!"),
  content: Text("Check Your Cart"),
),
);
}

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child)=> 
    Column(
      
        
           children: [

              Container(
                margin: EdgeInsets.all(20),

                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    
                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text('Search'),
                        Icon(Icons.search)
                      ],
                    ),
                  )
                  
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10)

                ),

              ),



             Padding(
               padding: const EdgeInsets.symmetric( horizontal:  25.0),
               child: Text('everyone flies... some fly longer than other'),
             ),


             Padding(
              padding: EdgeInsets.all(12),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children:[ 
               
                Text('Hot Picks 🔥',
                style: TextStyle(fontSize: 24,
                fontWeight: FontWeight.bold),
                           
                ),
               
               
                Text('see all',
                style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
                
               ]
                ),
             ),


             Expanded(
              
              child: ListView.builder(
              scrollDirection: Axis.horizontal,

               itemCount: value.getShoeList().length,

              itemBuilder: (context,index){
                Shoe shoe=value.getShoeList()[index];
               return ShoeTile(
                onTap: () => addShoeToCart(shoe),
              shoe: shoe,
             );

             }))




           ],

    ),
     );
  }
}