import 'package:ecom/Model/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{

List<Shoe> shoeShope= [
  Shoe(name: 'Nike Shoe',
     descripion: 'Beast Shoe',
     imagePath: "https://th.bing.com/th/id/OIP.xiLk6II7SS7bLC-CXwSykwHaE8?rs=1&pid=ImgDetMain",
     prise: "2030"
     
     ),

    Shoe(name: 'Kela Shoe',
     descripion: 'Beast Shoe Market',
     imagePath: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
     prise: "204"
     
     ),


   Shoe(name: 'Primeum Shoe',
     descripion: 'Beast Shoe Market',
     imagePath: "hhttps://img.freepik.com/premium-photo/flying-sneaker-shoes-futuristic-shoe-design_742418-36168.jpg",
     prise: "304"
     
     ),   


];



List <Shoe> useCart=[];

List<Shoe> getShoeList(){
  return shoeShope;
}




List <Shoe> getUserCart(){
  return useCart;
}




void addItemToCart(Shoe shoe){
useCart.add(shoe);
notifyListeners();
}




void removeFromCart(Shoe shoe){
  useCart.remove(shoe);
  notifyListeners();
}





}