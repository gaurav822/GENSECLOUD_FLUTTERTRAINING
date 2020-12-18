import 'package:ScreenStack/Screens/firstpage.dart';
import 'package:ScreenStack/Screens/secondpage.dart';
import 'package:ScreenStack/Screens/thirdpage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/secondPage": (context) => SecondPage(),
        "/firstPage": (context) => FirstPage(),
        "/thirdPage": (context) => ThirdPage(),

        }, //routes are used in pushwithnamed functions later on to navigate through screens
    )
  );
}