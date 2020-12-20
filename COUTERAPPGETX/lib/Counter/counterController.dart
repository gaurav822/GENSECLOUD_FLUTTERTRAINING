import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {

  RxInt _counter=0.obs;

  int get counter => _counter.value;

  // set setCounter(int value){

  //   _counter=value;

  // }

  increamentCounter(){
    _counter.value++;
    
  }

  decreamentCounter(){

    _counter.value--;
    

  }

  getScreenSize(){
    double height=Get.height;

    double width=Get.width;

    return Size(width,height);

    
  }

}