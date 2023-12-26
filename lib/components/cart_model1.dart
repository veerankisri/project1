import 'package:flutter/material.dart';



class cartItems1 extends ChangeNotifier{
  final List _shopItems1 = [
    ['Cauliflower',2.36,'lib/images/cauliflower.png',Colors.grey[500],],
    ['Potatoes',1.25,'lib/images/potatoes.png',Colors.grey[500],],
    ['Beans',0.84,'lib/images/beans.png',Colors.grey[500],],
    ['Cabbage',1.34,'lib/images/Cabbage.png',Colors.grey[500],]

];


final List _shopItems2 = [
    ['Apples',1.36,'lib/images/Apple.png',Colors.grey[500],],
    ['Grapes',0.25,'lib/images/Grapes.png',Colors.grey[500],],
    ['Mangoes',2.84,'lib/images/Mangoes.png',Colors.grey[500],],
    ['Bananas',2.34,'lib/images/Bananas.png',Colors.grey[500],]

];





final List _cart1 = [];



get shopItems1 => _shopItems1;

get shopItems2 => _shopItems2;

get cart1 => _cart1;



void addItemToCart(int index){
  _cart1.add(_shopItems1[index]);
  notifyListeners();
}

void addItemToCart2(int index){
  _cart1.add(_shopItems2[index]);
  notifyListeners();
}

void removeItemFromCart(int index){
  _cart1.removeAt(index);
  notifyListeners();
}


String CalculateInfo(){
  double TotalPrice = 0;
  for(int i = 0;i<_cart1.length;i++){
    TotalPrice+=_cart1[i][1];
  }

  return TotalPrice.toString();
}
}

