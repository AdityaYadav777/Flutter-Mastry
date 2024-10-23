import 'package:ecom/Model/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key,required this.shoe,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
      
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10)
      ),
        margin: EdgeInsets.only(left: 20),
        child: Column(
 mainAxisAlignment: MainAxisAlignment.center,
          children: [

          Image(image: NetworkImage(
            
           shoe.imagePath
          ),
          width: 300,
          height: 400,
          
          ),

          Text(shoe.prise+" Rs"
          ,

          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),
          ),
          Text(shoe.descripion),

               

         Row(
 

mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
        
              
 
        Column(
       
          children: [
             Padding(
               padding: const EdgeInsets.all(10),
               child: Text(shoe.name,
               style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
               ),),
             ),
           
          ],
 
 
  
        ),


SizedBox(width: 180,),

Padding(
  padding: const EdgeInsets.only(right: 10),
  child: GestureDetector(
    onTap:onTap ,
    child: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black
      ),
      
    child:    Icon(Icons.add,color: Colors.white,),
    ),
  ),
)
         
         ],
         
         )
      
        

          ],
        ),
    );
  }
}