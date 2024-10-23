import 'package:ecom/Componets/_cart_item.dart';
import 'package:ecom/Model/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 import 'package:ecom/Model/Cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: 
    (context,value,child)=> 
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          
          children: [
      
           Text('My Cart',
           style: TextStyle(fontSize: 22,
           fontWeight: FontWeight.bold),),

            SizedBox(height: 10,),

            Expanded(child: 
            ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context,index){
               Shoe shoe=value.getUserCart()[index];
                
                return CartItem(shoe:shoe,
                  
                );

            }))
            

      
          ],
      
      ),
    )
    );
  }
}