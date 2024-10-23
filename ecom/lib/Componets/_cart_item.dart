import 'package:ecom/Model/Cart.dart';
import 'package:ecom/Model/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {

  Shoe shoe;
CartItem ({super.key,required this.shoe});



  @override
  State<CartItem> createState() => _MyWidgetState();


}

class _MyWidgetState extends State<CartItem> {

  void removeItem(){
    
    Provider.of <Cart>(context,listen: false).removeFromCart(widget.shoe);

}


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(image: NetworkImage(widget.shoe.imagePath),),
      title: Text(widget.shoe.name),
      subtitle: Text(widget.shoe.prise),
      trailing: IconButton(onPressed: removeItem, icon: Icon(Icons.delete)),
    );
  }
}