

import 'package:firstproject/Screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(    //for ios CupertinoApp
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}