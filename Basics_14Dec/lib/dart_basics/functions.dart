import 'package:flutter/cupertino.dart';

void main(){
  // displayPositional("apple",120);
  displayName(itemName: "apple",price: 120);

  displayPositionalAndNamed("banana",price: 300);

  double price=CalculatePrice(price: 99);
  print(price);
}


void displayPositional(String itemName,double price){

  print("price of $itemName is $price per kg");

}


void displayName({String itemName,double price}){ //named function is used maximum in Flutter
  print("price of $itemName is $price per kg");
}

void displayOptional([String itemName,double price]){  //similar to positional but u can pass value or empty as well
   print("price of $itemName is $price per kg");
}


void displayPositionalAndNamed(String itemName,{@required double price}){ 
  //required means that value should be passed at any cost 
  //example onPressed is required for button

  print("price of $itemName is $price per kg");


}


double CalculatePrice({double price}){
  double incrAmt=9.99;
  double newAmt=price+incrAmt;
  return newAmt;
}


Map<String,dynamic> getUser() => {"name":"john","age":30};


